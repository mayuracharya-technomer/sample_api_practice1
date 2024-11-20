

import 'package:injectable/injectable.dart';
import 'package:sample_api_practice1/core/api_service/api_client.dart';

abstract class SampleRemoteDataSource{

  Future<dynamic> getAllDummyData();

  Future<dynamic> getAllDogsName();

  Future<dynamic> getallPosts();
}



@LazySingleton(as: SampleRemoteDataSource)
class SampleRemoteDataSourceImpl implements SampleRemoteDataSource{
  final ApiClient _client;

  SampleRemoteDataSourceImpl(this._client);
  @override
  Future getAllDummyData() async{
    final res= await _client.get('https://reqres.in/api/users');
    return res;
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

}