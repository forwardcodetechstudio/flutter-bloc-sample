part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

abstract class LoginActionState extends LoginState {}

class LoginInitial extends LoginState {}

class LoginInProgressState extends LoginState {}

class LoginSuccessfulState extends LoginState {}

class LoginErrorState extends LoginActionState {}

class LoginNavigateToHomePageActionState extends LoginActionState {}
