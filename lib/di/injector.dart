import 'package:fcts_flutter_starter/screens/login/bloc/login_bloc.dart';
import 'package:fcts_flutter_starter/services/impl/auth_service_impl.dart';
import 'package:fcts_flutter_starter/services/interfaces/auth_service.dart';
import 'package:fcts_flutter_starter/utils/logger_utils.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  injector.registerSingleton<LoggerUtils>(LoggerUtils());

  registerServices();

  registerBlocs();
}

void registerServices() {
  injector.registerLazySingleton<AuthService>(AuthServiceImpl.new);
}

void registerBlocs() {
  injector.registerFactory(() => LoginBloc(injector.get<AuthService>()));
}
