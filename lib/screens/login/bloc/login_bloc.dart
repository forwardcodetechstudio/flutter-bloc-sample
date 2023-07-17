import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginWithGoogleClickedEvent>(loginWithGoogleClickedEvent);
    on<LoginWithFacebookClickedEvent>(loginWithFacebookClickedEvent);
    on<LoginWithAppleClickedEvent>(loginWithAppleClickedEvent);
  }

  FutureOr<void> loginWithGoogleClickedEvent(
      LoginWithGoogleClickedEvent event, Emitter<LoginState> emit) async {
    // print("loginWithGoogleClickedEvent");

    emit(LoginInProgressState());
    // print("LoginInProgressState");

    await Future.delayed(const Duration(seconds: 3));
    emit(LoginSuccessfulState());
    // print("LoginInProgressState");
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginErrorState());
    // print("LoginInProgressState");
  }

  FutureOr<void> loginWithAppleClickedEvent(
      LoginWithAppleClickedEvent event, Emitter<LoginState> emit) {}

  FutureOr<void> loginWithFacebookClickedEvent(
      LoginWithFacebookClickedEvent event, Emitter<LoginState> emit) {}
}
