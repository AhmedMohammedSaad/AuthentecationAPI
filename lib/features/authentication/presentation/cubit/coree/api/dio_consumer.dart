// import 'package:auth_api/core/api/api_consumer.dart';
// import 'package:auth_api/core/error/error_Model.dart';
// import 'package:dio/dio.dart';

// class DioConsumer extends ApiConsumer {
//   Dio dio;
//   DioConsumer({
//     required this.dio,
//   });
//   @override
//   Future<dynamic> delet(String path,
//       {Object? data, Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//           await dio.delete(path, data: data, queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       errorHandels(e);
//     }
//   }

//   @override
//   get(String path,
//       {Object? data, Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//           await dio.get(path, data: data, queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       errorHandels(e);
//     }
//   }

//   @override
//   patch(String path,
//       {Object? data, Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//           await dio.patch(path, data: data, queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       errorHandels(e);
//     }
//   }

//   @override
//   post(String path,
//       {Object? data, Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//           await dio.post(path, data: data, queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       errorHandels(e);
//     }
//   }
// }
