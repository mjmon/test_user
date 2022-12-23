import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @Named('dio')
  @preResolve
  @singleton
  Future<Dio> get dio async {
    final options = BaseOptions(
      headers: {"accept": "application/json"},
      responseType: ResponseType.json,
      connectTimeout: 60000, // 1 min
      receiveTimeout: 30000, // 30 sec
      validateStatus: (status) => status != 500,
    );
    final dio = Dio(options);
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        debugPrint("onRequest: $options");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint("onResponse StatusCode: ${response.statusCode}");
        debugPrint("onResponse Data: ${response.data}");
        return handler.next(response);
      },
      onError: (error, handler) {
        debugPrint("onError: $error");
        debugPrint("onError StatusCode : ${error.response?.statusCode}");
        debugPrint("onError Data : ${error.response?.data}");
        return handler.next(error);
      },
    ));
    return dio;
  }
}
