import 'package:dio/dio.dart';

class CustomerRequestRequestBody {
  final String name;
  final String? phoneNumber;
  final String? taxNumber;
  final double? creditLimit;
  final String? buildingNumber;
  final String? streetName;
  final int? subNumber;
  final int? cityId;
  final int? countryId;
  final String? zipCode;
  final List<MultipartFile>? files;

  CustomerRequestRequestBody({
    required this.name,
    this.phoneNumber,
    this.taxNumber,
    this.creditLimit,
    this.buildingNumber,
    this.streetName,
    this.subNumber,
    this.zipCode,
    this.countryId,
    this.cityId,
    this.files,
  });
}
