import 'package:customer_request_task/core/helper/extensions.dart';
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
      appBar: AppBar(title: Text("Test"),),
      body:Column(
        children: [
          const ColumnCustomerRequest(),
          verticalSpace(16),
          AppTextButton(buttonText:' buttonText', textStyle: TextStylesManager.font13GrayRegular, onPressed: ()async{
            context.read< CustomerRequestCubit>().emitCustomerRequest();   
            if(context.mounted){
              context.pop();
            }      }),
            CustomerRequestBlocListener(),
        ],
      ) ,
    );
  }
}