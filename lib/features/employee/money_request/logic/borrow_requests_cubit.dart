import 'package:customer_request_task/features/employee/money_request/data/models/borrow_requests_model.dart';
import 'package:customer_request_task/features/employee/money_request/data/repo/borrow_requests_repo.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class BorrowRequestsCubit extends Cubit<BorrowRequestsState> {
  final BorrowRequestsRepo _borrowRequestsRepo;
  final TextEditingController borrowRequestDateController =
      TextEditingController();
  // final TextEditingController borrowValueController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  double borrowValue = 1.0;
  BorrowRequestsCubit(this._borrowRequestsRepo)
    : super(const BorrowRequestsState.initial());

  void emitborrowRequest() async {
    emit(BorrowRequestsState.loading());
    try {
      final response = await _borrowRequestsRepo.borrowRequests(
        BorrowRequestsRequestBody(
          borrowValue: borrowValue,
          reason: reasonController.text,
          borrowRequestDate: borrowRequestDateController.text,
        ),
      );
      emit(BorrowRequestsState.success(response));
      clearTextFields();
    } catch (error) {
      emit(BorrowRequestsState.failure(error.toString()));
    }
  }

  void setBorrowValue(double newborrowValue) {
    borrowValue = newborrowValue;
  }

  Future<void> selectRequestDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      borrowRequestDateController.text = formattedDate;
    }
  }

  void clearTextFields() {
    borrowRequestDateController.clear();
    reasonController.clear();
  }
}
