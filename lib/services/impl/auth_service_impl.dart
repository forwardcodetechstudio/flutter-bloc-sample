import 'package:fcts_flutter_starter/services/interfaces/auth_service.dart';

class AuthServiceImpl extends AuthService {
  @override
  Future<bool> doLogin(String provider) {
    switch (provider) {
      case "google":
        break;
      case "facebook":
        break;
      case "apple":
        break;
      default:
    }

    return Future.value(true);
  }
}
