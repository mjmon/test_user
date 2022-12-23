import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class IApiClient {
  ///for all `GET` request,
  Future<Response<dynamic>> getRequest({
    required String path,
    Map<String, dynamic>? queryParameters,
    bool authRequired = false,
  });

  ///for all `POST` request,
  Future<Response<dynamic>> postRequest(
      {required String path,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      bool authRequired = false});
}

@Injectable(as: IApiClient)
class ApiClientImpl implements IApiClient {
  final Dio _dio;

  const ApiClientImpl({
    @Named('dio') required Dio dio,
  }) : _dio = dio;

  void handleError(DioError e) {
    //TODO: handle error, log to crashlytics
  }

  @override
  Future<Response> getRequest(
      {required String path,
      bool authRequired = false,
      Map<String, dynamic>? queryParameters}) async {
    final response = await _dio
        .get(
      path,
      queryParameters: queryParameters,
    )
        .catchError((error) {
      debugPrint("onError: $error");
      handleError(error);
    });

    return response;
  }

  @override
  Future<Response> postRequest(
      {required String path,
      data,
      Map<String, dynamic>? queryParameters,
      bool authRequired = false}) {
    // TODO: implement postRequest
    throw UnimplementedError();
  }
}
