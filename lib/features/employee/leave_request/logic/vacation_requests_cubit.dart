import 'package:customer_request_task/features/employee/leave_request/data/models/vacation_requests_request_body.dart';
import 'package:customer_request_task/features/employee/leave_request/data/repo/vacation_requests_repo.dart';
import 'package:customer_request_task/features/employee/leave_request/logic/vacation_requests_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class VacationRequestsCubit extends Cubit<VacationRequestsState> {
  final VacationRequestsRepo _vacationRequestsRepo;
  final TextEditingController dateToController = TextEditingController();
  final TextEditingController dateFromController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  VacationRequestsCubit(this._vacationRequestsRepo)
    : super(const VacationRequestsState.initial());

  void emitVacationRequest() async {
    emit(VacationRequestsState.loading());
    try {
      final response = await _vacationRequestsRepo.vacationRequests(
        VacationRequestsRequestBody(
          dateFrom: dateFromController.text,
          dateTo: dateToController.text,
          reason: reasonController.text,
        ),
      );
      emit(VacationRequestsState.success(response));
      clearTextFields();
    } catch (error) {
      emit(VacationRequestsState.failure(error.toString()));
    }
  }

  Future<void> selectDateFrom(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

      dateFromController.text = formattedDate;
    }
  }

  Future<void> selectDateTo(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

      dateToController.text = formattedDate;
    }
  }

  void clearTextFields() {
    reasonController.clear();
    dateFromController.clear();
    dateToController.clear();
  }
}
