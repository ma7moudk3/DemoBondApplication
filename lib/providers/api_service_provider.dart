import 'package:bond/config/configs.dart';
import 'package:bond/features/auth/auth.dart';
import 'package:bond_core/bond_core.dart';
import 'package:bond_network/bond_network.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiServiceProvider extends ServiceProvider {
  @override
  Future<void> register(GetIt it) async {
    final baseOptions = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds:10),
      receiveDataWhenStatusError: config('RECEIVE_DATA_WHEN_STATUS_ERROR'),
      baseUrl: "https://phpstack-628142-3311232.cloudwaysapps.com/api/v1/",
    );
    Api.extraHeaders = () {
      final token = Auth.token();
      return {
        if (token != null) 'Authorization': 'Bearer $token',
      };
    };
    baseOptions.headers = Api.headers();
    final dio = Dio(baseOptions);
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90),
      );
    }
    it.registerLazySingleton(() => dio);
    it.registerLazySingleton(() => BondFire());
    it.registerLazySingleton(() => ApiClient(it()));
  }
}
