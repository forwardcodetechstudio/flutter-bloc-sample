import 'package:fcts_flutter_starter/base/base_service.dart';
import 'package:fcts_flutter_starter/utils/logger_utils.dart';
import 'package:get_it/get_it.dart';

class BaseServiceImpl implements BaseService {
  BaseServiceImpl();
  final LoggerUtils loggerUtils = GetIt.instance<LoggerUtils>();
}
