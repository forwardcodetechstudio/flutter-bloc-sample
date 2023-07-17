part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginWithGoogleClickedEvent extends LoginEvent {}

class LoginWithFacebookClickedEvent extends LoginEvent {}

class LoginWithAppleClickedEvent extends LoginEvent {}


class LoginNavigateToHomeEvent extends LoginEvent{}
