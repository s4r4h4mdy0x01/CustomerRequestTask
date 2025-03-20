import 'package:customer_request_task/core/di/dependency_injection.dart';
import 'package:customer_request_task/core/router/routes_string.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/ui/screen/add_new_customer_request_screen.dart';
import 'package:customer_request_task/features/auth/logic/login_cubit.dart';
import 'package:customer_request_task/features/auth/logic/register_cubit.dart';
import 'package:customer_request_task/features/auth/ui/screens/register_screen.dart';
import 'package:customer_request_task/features/auth/ui/screens/login_screen.dart';
import 'package:customer_request_task/features/auth/ui/screens/splash_login_or_register.dart';
import 'package:customer_request_task/features/employee/employee_screen.dart';
import 'package:customer_request_task/features/employee/leave_request/ui/leave_request_screen.dart';
import 'package:customer_request_task/features/employee/money_request/logic/money_request_cubit.dart';
import 'package:customer_request_task/features/employee/money_request/ui/money_request_screen.dart';
import 'package:customer_request_task/features/leader/dashboard_leader/ui/screens/dashboard_leader_screen.dart';
import 'package:customer_request_task/features/leader/purchase_return/ui/screens/purchase_return_screen.dart';
import 'package:customer_request_task/features/leader/ui/leader_screen.dart';
import 'package:customer_request_task/features/leader/view_visit_leader/ui/screens/view_visit_leader_screen.dart';
import 'package:customer_request_task/features/main_features/create_invoice/logic/create_invoice_cubit.dart';
import 'package:customer_request_task/features/main_features/create_invoice/ui/create_invoice_sceen.dart';
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
      case RoutesString.splashLoginOrRegister:
        return MaterialPageRoute(
          builder: (context) => const SplashLoginOrRegister(),
        );
      case RoutesString.leader:
        return MaterialPageRoute(builder: (context) => const LeaderScreen());
      case RoutesString.employee:
        return MaterialPageRoute(builder: (context) => const EmployeeScreen());
      case RoutesString.purchaseReturnScreen:
        return MaterialPageRoute(
          builder: (context) => const PurchaseReturnScreen(),
        );
      case RoutesString.sales:
        return MaterialPageRoute(builder: (context) => const SalesScreen());
      case RoutesString.moneyRequestScreen:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => MoneyRequestCubit(),
                child: const MoneyRequestScreen(),
              ),
        );

      ///? todo
      case RoutesString.leaveRequestScreen:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => MoneyRequestCubit(),
                child: const LeaveRequestScreen(),
              ),
        );
      case RoutesString.dashboardLeaderScreen:
        return MaterialPageRoute(
          builder: (context) => const DashboardLeaderScreen(),
        );
      case RoutesString.viewVisitLeaderScreen:
        return MaterialPageRoute(
          builder: (context) => const ViewVisitLeaderScreen(),
        );
      case RoutesString.registerScreen:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => RegisterCubit(),
                child: const RegisterScreen(),
              ),
        );
      case RoutesString.createInvoiceSceen:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => CreateInvoiceCubit(),
                child: const CreateInvoiceSceen(),
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
