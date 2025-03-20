import 'dart:io';
import 'package:customer_request_task/features/leader/add_new_customer_request/data/models/customer_request_request_body.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/data/repo/customer_request_repo.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/logic/customer_request_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerRequestCubit extends Cubit<CustomerRequestState> {
  final CustomerRequestRepo _customerRequestRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController taxNumberController = TextEditingController();
  TextEditingController creditLimitController = TextEditingController();
  TextEditingController buildingNumberController = TextEditingController();
  TextEditingController streetNameController = TextEditingController();
  TextEditingController subNumberController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  int? countryId = 1;
  int? cityId = 1;
  List<File> files = [];
  final formKey = GlobalKey<FormState>();
  CustomerRequestCubit(this._customerRequestRepo)
    : super(const CustomerRequestState.initial());
    
  Future<List<MultipartFile>> _convertFilesToMultipart(List<File> files) async {
    List<MultipartFile> multipartFiles = [];
    for (var file in files) {
      multipartFiles.add(
        await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        ),
      );
    }
    return multipartFiles;
  }

  void emitCustomerRequest() async {
    emit(const CustomerRequestState.loading());
    try {
      final multipartFiles = await _convertFilesToMultipart(files);
      final response = await _customerRequestRepo.customerRequest(
        CustomerRequestRequestBody(
          name: nameController.text,
          phoneNumber: phoneNumberController.text,
          taxNumber: taxNumberController.text,
          creditLimit: double.tryParse(creditLimitController.text),
          buildingNumber: buildingNumberController.text,
          streetName: streetNameController.text,
          subNumber: int.tryParse(subNumberController.text),
          zipCode: zipCodeController.text,
          countryId: countryId,
          cityId: cityId,
          files: multipartFiles,
        ),
      );

      emit(CustomerRequestState.success(response));
      clearTextFields();
    } catch (error) {
      emit(CustomerRequestState.failure(error.toString()));
    }
  }

  Future<void> pickFile() async {
    try {
      final FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpg', 'png'],
        allowMultiple: true,
      );

      if (result != null && result.files.isNotEmpty) {
        final pickedFiles =
            result.files
                .where((file) => file.path != null)
                .map((file) => File(file.path!))
                .toList();

        files.addAll(pickedFiles);
        debugPrint('Total files: ${files.length}');

        emit(CustomerRequestState.filesUpdated(List.from(files)));
      } else {
        debugPrint('No files selected');
      }
    } catch (e) {
      debugPrint('File picking error: $e');
      emit(CustomerRequestState.failureFilePick(e.toString()));
    }
  }

  Future<void> captureImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedImage != null) {
      final imageFile = File(pickedImage.path);
      files.add(imageFile); 
      emit(CustomerRequestState.filesUpdated(List.from(files)));
    }
  }

  void setCountryId(int newCountryId) {
    countryId = newCountryId;
  }

  void setCityId(int newCityId) {
    cityId = newCityId;
  }

  void clearTextFields() {
    nameController.clear();
    phoneNumberController.clear();
    taxNumberController.clear();
    creditLimitController.clear();
    buildingNumberController.clear();
    streetNameController.clear();
    subNumberController.clear();
    zipCodeController.clear();
    files.clear();
  }
}
