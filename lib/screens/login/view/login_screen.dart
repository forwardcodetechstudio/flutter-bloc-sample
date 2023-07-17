import 'package:fcts_flutter_starter/base/stateful_page.dart';
import 'package:fcts_flutter_starter/screens/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulPage {
  const LoginScreen({super.key});

  @override
  StatefulPageState createState() => LoginScreenState();
}

class LoginScreenState extends StatefulPageState {
  var loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      bloc: loginBloc,
      listenWhen: (previous, current) => current is LoginActionState,
      buildWhen: (previous, current) => current is! LoginActionState,
      listener: (context, state) {
        if (state is LoginNavigateToHomePageActionState) {
          // navigate to home page
        }
        if (state is LoginErrorState) {
          loggerUtils.error("Login error");
          showSnackBar(context, "Error in login");
        }
      },
      builder: (context, state) {
        if (state.runtimeType is LoginInProgressState) {
          return CircularProgressIndicator();
        } else if (state.runtimeType is LoginSuccessfulState) {
          return Icon(Icons.check);
        } else {
          return Scaffold(
              body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (state is LoginInProgressState)
                const CircularProgressIndicator()
              else if (state is LoginSuccessfulState)
                const Icon(Icons.check_box)
              else
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          loginBloc.add(LoginWithGoogleClickedEvent());
                        },
                        child: Text("Login with Google")),
                    ElevatedButton(
                        onPressed: () {
                          loginBloc.add(LoginWithFacebookClickedEvent());
                        },
                        child: Text("Login with Facebook")),
                    ElevatedButton(
                        onPressed: () {
                          loginBloc.add(LoginWithAppleClickedEvent());
                        },
                        child: Text("Login with Apple")),
                  ],
                ),
            ],
          ));
        }
      },
    );
  }
}
