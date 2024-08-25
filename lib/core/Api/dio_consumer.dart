import 'package:auth_api/core/Api/api_consumer.dart';
import 'package:auth_api/core/Api/end_point.dart';
import 'package:auth_api/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  Dio dio;
  DioConsumer({required this.dio})
  {
    dio.options.baseUrl=EndPoint.baseUrl;
    dio.interceptors.add(Interceptor());
    dio.interceptors.add(LogInterceptor( 
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handelException(e);
    }
  }

 

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters})async {
 try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handelException(e);
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParameters})async {
  try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handelException(e);
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParameters})async {
   try {
      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handelException(e);
    }
  }
}
