

import 'package:sample_api_practice1/data/models/user_response_model.dart';

sealed class GetAllUserDataState{
  const GetAllUserDataState();
}


class GetAllUserDataInitial extends GetAllUserDataState{
  GetAllUserDataInitial();
}

class GetAllUserDataLoading extends GetAllUserDataState{
  GetAllUserDataLoading();
}

class GetAllUserDataSuccess extends GetAllUserDataState{
  final UserResponseModel data;
  GetAllUserDataSuccess(this.data);
}

class GetAllUserDataFailure extends GetAllUserDataState{
  GetAllUserDataFailure();
}