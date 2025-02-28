import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/widgets/column_customer_request.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/widgets/customer_request_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewCustomerRequestScreen extends StatelessWidget {
  const AddNewCustomerRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Add New Customer Request Screen", style: TextStylesManager.font16BlackMedium,
      ),),
      body:  SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
              const ColumnCustomerRequest(),
              verticalSpace(16),
              AppTextButton(buttonText:'Add Detail', textStyle: TextStylesManager.font16WhiteRegular, onPressed: ()async{
                context.read< CustomerRequestCubit>().emitCustomerRequest();   
                  }),
                CustomerRequestBlocListener(),
            ],
          ),
        ),
      ) ,
    );
  }
}