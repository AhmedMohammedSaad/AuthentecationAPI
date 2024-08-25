// import 'package:auth_api/core/error/error_Handel.dart';
// import 'package:dio/dio.dart';

// class ErrorModel {
//   final int status;
//   final String ErrorMessage;

//   ErrorModel({required this.status, required this.ErrorMessage});
//   factory ErrorModel.fromJson(Map<String, dynamic> jasundata) {
//     return ErrorModel(
//       status: jasundata["status"],
//       ErrorMessage: jasundata["ErrorMessage"],
//     );
//   }
// }

// void errorHandels(DioException e) {
//   switch (e.type) {
//     case DioExceptionType.connectionTimeout:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//     case DioExceptionType.sendTimeout:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//     case DioExceptionType.receiveTimeout:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//     case DioExceptionType.badCertificate:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//     case DioExceptionType.cancel:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//     case DioExceptionType.connectionError:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//     case DioExceptionType.unknown:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//     case DioExceptionType.badResponse:
//       switch (e.response?.statusCode) {
//         case 400:
//           throw ServerException(
//             errorModel: ErrorModel.fromJson(e.response!.data),
//           );
//         case 401:
//           throw ServerException(
//             errorModel: ErrorModel.fromJson(e.response!.data),
//           );
//         case 402:
//           throw ServerException(
//             errorModel: ErrorModel.fromJson(e.response!.data),
//           );
//         case 405:
//           throw ServerException(
//             errorModel: ErrorModel.fromJson(e.response!.data),
//           );
//         case 500:
//           throw ServerException(
//             errorModel: ErrorModel.fromJson(e.response!.data),
//           );
//         default:
//           throw ServerException(
//             errorModel: ErrorModel.fromJson(e.response!.data),
//           );
//       }
//     default:
//       throw ServerException(
//         errorModel: ErrorModel.fromJson(e.response!.data),
//       );
//   }
// }
