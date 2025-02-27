import 'package:customer_request_task/app.dart';
import 'package:customer_request_task/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {

  await ScreenUtil.ensureScreenSize();
  runApp(AddNewCustomerRequestApp(
    appRouter: AppRouter(),
  ));
}