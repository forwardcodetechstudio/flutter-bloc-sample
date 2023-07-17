import 'package:fcts_flutter_starter/services/interfaces/base_service.dart';

abstract class AuthService extends BaseService {
  Future<bool> doLogin(String provider);
}
