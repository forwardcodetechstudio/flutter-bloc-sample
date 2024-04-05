import 'package:fcts_flutter_starter/model/remote/user.dart';
import 'package:fcts_flutter_starter/network/api_service.dart';
import 'package:fcts_flutter_starter/networking/api_error.dart';
import 'package:fcts_flutter_starter/networking/api_response.dart';
import 'package:fcts_flutter_starter/services/interfaces/auth_service.dart';

class AuthServiceImpl extends AuthService {
  AuthServiceImpl({required this.apiService});

  final ApiService apiService;

  @override
  Future<ApiResponse<User?>> doLogin(
    String provider, {
    String? email,
    String? phone,
    String? password,
  }) async {
    User? user;

    try {
      final response = await apiService.post(
        '/login',
        parameters: {
          'email': email,
          'password': password,
          'provider': provider,
        },
      );

      user = User.fromJson(response.data['data']);

      return ApiResponse(data: user);
    } on Exception catch (e) {
      return ApiResponse(error: ApiError(e: e, message: 'Login Failed'));
    }
  }
}
