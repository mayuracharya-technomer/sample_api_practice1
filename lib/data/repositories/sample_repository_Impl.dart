import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_api_practice1/data/data_sources/remote/sample_remote_data_source.dart';
import 'package:sample_api_practice1/data/models/user_response_model.dart';
import 'package:sample_api_practice1/domain/app_error.dart';
import 'package:sample_api_practice1/domain/repositories/sample_repository.dart';


@LazySingleton(as: SampleRepository)
class SampleRepositoryImpl implements SampleRepository {
  final SampleRemoteDataSource _sampleRemoteDataSource;

  SampleRepositoryImpl(this._sampleRemoteDataSource);

  @override
  Future<Either<AppError, UserResponseModel>> getAllDummyData() async {
    try {
      dynamic res = await _sampleRemoteDataSource.getAllDummyData();
      return right(res);
    } catch (e) {
      return left(AppError(errormessage: e.toString()));
    }
  }

  @override
  Future<Either<AppError, dynamic>> getAllDogsName() async{
    try {
      dynamic res = await _sampleRemoteDataSource.getAllDogsName();
      return right(res);
    } catch (e) {
      return left(AppError(errormessage: e.toString()));
    }
  }

  @override
  Future<Either<AppError, dynamic>> getallPosts() async{
    try {
      dynamic res = await _sampleRemoteDataSource.getallPosts();
      return right(res);
    } catch (e) {
      return left(AppError(errormessage: e.toString()));
    }
  }
}
