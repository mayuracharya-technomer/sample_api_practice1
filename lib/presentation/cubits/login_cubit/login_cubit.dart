import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sample_api_practice1/domain/entities/params/login_params.dart';
import 'package:sample_api_practice1/domain/repositories/sample_repository.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final SampleRepository _sampleRepository;
  LoginCubit(this._sampleRepository) : super(LoginInitial());

  login(LoginParams loginParams)async{
    emit(LoginLoading());

    final res= await _sampleRepository.login(loginParams.toJson());

    res.fold((appError){
      emit(LoginFailure());
    }, (data){
      emit(LoginSuccess());
    });
  }
}
