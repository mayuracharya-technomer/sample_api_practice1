

import 'package:dartz/dartz.dart';
import 'package:sample_api_practice1/domain/app_error.dart';

abstract class SampleRepository{

  Future<Either<AppError,dynamic>> getAllDummyData();


  Future<Either<AppError,dynamic>> getAllDogsName();


  Future<Either<AppError,dynamic>> getallPosts();

}