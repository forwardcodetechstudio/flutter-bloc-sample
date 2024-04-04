import 'package:fcts_flutter_starter/networking/api_error.dart';

class ApiResponse<T> {
  ApiResponse({this.data, this.error});
  T? data;

  ApiError? error;
}
