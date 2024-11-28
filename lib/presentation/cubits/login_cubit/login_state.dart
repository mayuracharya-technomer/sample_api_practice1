part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}


class LoginLoading extends LoginState{
  LoginLoading();
}

class LoginSuccess extends LoginState{
  LoginSuccess();
}

class LoginFailure extends LoginState{
  LoginFailure();
}