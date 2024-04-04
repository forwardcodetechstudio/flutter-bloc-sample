

import 'package:fcts_flutter_starter/base/base_service.dart';

abstract class AuthService extends BaseService {
  Future<bool> doLogin(String provider);
}
