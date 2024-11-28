

import 'package:dartz/dartz.dart';
import 'package:sample_api_practice1/data/models/user_response_model.dart';
import 'package:sample_api_practice1/domain/app_error.dart';

abstract class SampleRepository{

  Future<Either<AppError,UserResponseModel>> getAllDummyData();


  Future<Either<AppError,dynamic>> getAllDogsName();


  Future<Either<AppError,dynamic>> getallPosts();

  Future<Either<AppError,dynamic>> login(Map<String, dynamic> body);


}