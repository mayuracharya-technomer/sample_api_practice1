
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_api_practice1/domain/custom_exception.dart';

@lazySingleton
class ApiClient{

  final Dio _dio;

  ApiClient(this._dio);

  dynamic get(String path, { Map<String, dynamic>? queryParameters})async{


try{

  final response = await _dio.get(path,queryParameters: queryParameters);

  return response.data;

}on DioException catch(e){
  if(e.type == DioExceptionType.connectionTimeout || e.type ==DioExceptionType.receiveTimeout){
    throw TimeoutException(e.message);
  }
  if(e.type == DioExceptionType.badResponse){
    throw CustomException(errorCode: e.response?.statusCode, errorMessage: e.message);
  }

}



  }

}