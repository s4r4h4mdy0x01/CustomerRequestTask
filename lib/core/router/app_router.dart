import 'package:customer_request_task/core/di/dependency_injection.dart';
import 'package:customer_request_task/core/router/routes_string.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/screen/add_new_customer_request_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesString.addNewCustomerRequest:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => getIt<CustomerRequestCubit>(),
                child: const AddNewCustomerRequestScreen(),
              ),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: const Text('noRouteFound')),
            body: const Center(child: Text('noRouteFound')),
          ),
    );
  }
}
