import 'package:customer_request_task/core/router/app_router.dart';
import 'package:customer_request_task/core/router/routes_string.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddNewCustomerRequestApp extends StatelessWidget {
   final AppRouter appRouter;
  const AddNewCustomerRequestApp({super.key,  required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Add New Customer Request Task',
          theme: ThemeData(),
          onGenerateRoute: AppRouter.onGenerate,
          initialRoute: RoutesString.addNewCustomerRequest),
    );
  }
}