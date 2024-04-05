import 'package:fcts_flutter_starter/base/base_service.dart';
import 'package:fcts_flutter_starter/model/remote/user.dart';
import 'package:fcts_flutter_starter/networking/api_response.dart';

abstract class AuthService extends BaseService {
  Future<ApiResponse<User?>> doLogin(
    String provider, {
    String? email,
    String? phone,
    String? password,
  });
}
