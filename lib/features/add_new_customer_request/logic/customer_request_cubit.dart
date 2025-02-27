import 'package:customer_request_task/features/add_new_customer_request/data/models/customer_request_request_body.dart';
import 'package:customer_request_task/features/add_new_customer_request/data/repo/customer_request_repo.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_state.dart';
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
            TextEditingController cityEnNameController = TextEditingController();
             TextEditingController cityArNameController = TextEditingController();
             TextEditingController countryEnNameController = TextEditingController();
               TextEditingController zipCodeController = TextEditingController();
               TextEditingController countryArNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  CustomerRequestCubit(this._customerRequestRepo):super(const CustomerRequestState.initial() );
  void emitCustomerRequest()async {
    emit(const CustomerRequestState.loading());
       try {
      final response = await _customerRequestRepo.customerRequest(
        CustomerRequestRequestBody(
          name: nameController.text,
          phoneNumber: phoneNumberController.text,
          taxNumber: taxNumberController.text,
          creditLimit: double.tryParse(creditLimitController.text) ,
          buildingNumber: buildingNumberController.text,
          streetName: streetNameController.text,
          subNumber: int.tryParse(subNumberController.text) ,
          zipCode: zipCodeController.text,
          cityEnName: cityEnNameController.text,
          cityArName: cityArNameController.text,
          countryEnName: countryEnNameController.text,
          countryArName: countryArNameController.text,
        ),
      );

      emit(CustomerRequestState.success(response));
    } catch (error) {
      emit(CustomerRequestState.failure(error.toString()));
    }  
  }

}

