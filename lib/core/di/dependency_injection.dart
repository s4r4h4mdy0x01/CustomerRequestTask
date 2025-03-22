import 'package:customer_request_task/core/network/api_service.dart';
import 'package:customer_request_task/core/network/dio.dart';
import 'package:customer_request_task/features/employee/money_request/data/repo/borrow_requests_repo.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_cubit.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/data/repo/customer_request_repo.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/auth/data/repo/login_repo.dart';
import 'package:customer_request_task/features/auth/logic/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupDependencyInjection() async {
  // dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<CustomerRequestRepo>(
    () => CustomerRequestRepo(getIt()),
  );
  getIt.registerFactory<CustomerRequestCubit>(
    () => CustomerRequestCubit(getIt()),
  );
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
 // borrow request
  getIt.registerLazySingleton<BorrowRequestsRepo>(() => BorrowRequestsRepo(getIt()));
  getIt.registerFactory<BorrowRequestsCubit>(() => BorrowRequestsCubit(getIt())); 
}
