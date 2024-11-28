

import 'package:injectable/injectable.dart';
import 'package:sample_api_practice1/core/api_service/api_client.dart';
import 'package:sample_api_practice1/data/models/user_response_model.dart';

abstract class SampleRemoteDataSource{

  Future<UserResponseModel> getAllDummyData();

  Future<dynamic> getAllDogsName();

  Future<dynamic> getallPosts();

  Future<dynamic> login(Map<String, dynamic> body);
}



@LazySingleton(as: SampleRemoteDataSource)
class SampleRemoteDataSourceImpl implements SampleRemoteDataSource{
  final ApiClient _client;

  SampleRemoteDataSourceImpl(this._client);
  @override
  Future<UserResponseModel> getAllDummyData() async{
    final res= await _client.get('https://reqres.in/api/users');
    return UserResponseModel.fromJson(res);
  }

  @override
  Future getAllDogsName() async{
    final res= await _client.get('https://reqres.in/api/dogs');
    return res;
  }

  @override
  Future getallPosts() async{
    final res= await _client.get("https://jsonplaceholder.typicode.com/posts");
    return res;
  }

  @override
  Future login(Map<String, dynamic> body) async{
    final res= await _client.post("https://reqres.in/api/login");
    return res;
  }

}