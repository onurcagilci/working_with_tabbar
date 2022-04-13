import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nfssoftmobil/core/app/constant/constants.dart';
import 'package:nfssoftmobil/core/app/network_error.dart';

import 'package:logger/logger.dart';

GetIt locator = GetIt.asNewInstance();

void setupLocator() {

  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => Logger());
  locator.registerLazySingleton(() => MyNetworkError('', responseStatusCode: ''));
  locator.registerLazySingleton(() => BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 10 * 1000,
      receiveTimeout: 10 * 1000));
}
// locator.registerLazySingleton(() => Logger());
