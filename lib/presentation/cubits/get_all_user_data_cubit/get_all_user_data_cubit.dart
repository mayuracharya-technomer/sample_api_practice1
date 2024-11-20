import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_api_practice1/domain/repositories/sample_repository.dart';
import 'package:sample_api_practice1/presentation/cubits/get_all_user_data_cubit/get_all_user_data_state.dart';

@injectable
class GetAllUserDataCubit extends Cubit<GetAllUserDataState>{

  final SampleRepository _sampleRepository;
  GetAllUserDataCubit(this._sampleRepository) : super(GetAllUserDataInitial());


  void getAllUserData()async{
    emit(GetAllUserDataLoading());

    final res= await _sampleRepository.getAllDummyData();

    res.fold((appError){
      emit(GetAllUserDataFailure());
    }, (data){
      emit(GetAllUserDataSuccess(data));
    });
  }



}

