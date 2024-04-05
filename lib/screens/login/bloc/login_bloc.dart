import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fcts_flutter_starter/base/base_bloc.dart';
import 'package:fcts_flutter_starter/services/interfaces/auth_service.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc(this.authService) : super(LoginInitial()) {
    on<LoginWithGoogleClickedEvent>(loginWithGoogleClickedEvent);
    on<LoginWithFacebookClickedEvent>(loginWithFacebookClickedEvent);
    on<LoginWithAppleClickedEvent>(loginWithAppleClickedEvent);
  }
  final AuthService authService;

  FutureOr<void> loginWithGoogleClickedEvent(
      LoginWithGoogleClickedEvent event, Emitter<LoginState> emit) async {
    // print("loginWithGoogleClickedEvent");

    emit(LoginInProgressState());

    final apiResponse = await authService.doLogin(
      'google',
      email: 'abc@gmail.com',
      password: '123456',
    );

    if (apiResponse.data != null) {
      emit(LoginSuccessfulState());
    } else {
      emit(LoginErrorState());
    }
  }

  FutureOr<void> loginWithAppleClickedEvent(
      LoginWithAppleClickedEvent event, Emitter<LoginState> emit) {}

  FutureOr<void> loginWithFacebookClickedEvent(
      LoginWithFacebookClickedEvent event, Emitter<LoginState> emit) {}
}
