import 'package:fcts_flutter_starter/utils/logger_utils.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  injector.registerSingleton<LoggerUtils>(LoggerUtils());
}
