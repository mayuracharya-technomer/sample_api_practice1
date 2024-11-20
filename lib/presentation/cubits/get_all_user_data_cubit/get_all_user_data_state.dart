

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
  final dynamic data;
  GetAllUserDataSuccess(this.data);
}

class GetAllUserDataFailure extends GetAllUserDataState{
  GetAllUserDataFailure();
}