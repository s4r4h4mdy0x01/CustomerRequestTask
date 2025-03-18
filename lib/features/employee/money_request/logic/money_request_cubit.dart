import 'package:customer_request_task/features/employee/money_request/logic/money_request_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MoneyRequestCubit extends Cubit<MoneyRequestState> {
  final TextEditingController requestDateController = TextEditingController();
  
  MoneyRequestCubit() : super(const MoneyRequestState());

  Future<void> selectRequestDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      requestDateController.text = formattedDate;
      emit(state.copyWith(requestDate: formattedDate));
    }
  }
}
