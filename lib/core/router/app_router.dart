import 'package:customer_request_task/core/di/dependency_injection.dart';
import 'package:customer_request_task/core/router/routes_string.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/screen/add_new_customer_request_screen.dart';
import 'package:customer_request_task/features/auth/logic/login_cubit.dart';
import 'package:customer_request_task/features/auth/logic/login_institution_cubit.dart';
import 'package:customer_request_task/features/auth/ui/screens/login_institution_screen.dart';
import 'package:customer_request_task/features/auth/ui/screens/login_screen.dart';
import 'package:customer_request_task/features/auth/ui/screens/splash_login_or_login_institution.dart';
import 'package:customer_request_task/features/employee/employee_screen.dart';
import 'package:customer_request_task/features/leader/ui/leader_screen.dart';
import 'package:customer_request_task/features/sales/ui/sales_screen.dart';
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
      case RoutesString.splashLoginOrLoginInstitution:
        return MaterialPageRoute(
          builder: (context) => const SplashLoginOrLoginInstitution(),
        );
      case RoutesString.leader:
        return MaterialPageRoute(builder: (context) => const LeaderScreen());
      case RoutesString.employee:
        return MaterialPageRoute(builder: (context) => const EmployeeScreen());

      case RoutesString.sales:
        return MaterialPageRoute(
          builder:
              (context) => const SalesScreen(userRole: '', accessToken: ''),
        );

      case RoutesString.loginInstitutionScreen:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => LoginInstitutionCubit(),
                child: const LoginInstitutionScreen(),
              ),
        );

      case RoutesString.login:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
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
