import 'package:dio/dio.dart';
import 'package:fcts_flutter_starter/base/base_service.dart';
import 'package:fcts_flutter_starter/networking/api_response.dart';

abstract class ApiService extends BaseService {
  Future<Response<dynamic>> get(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  });
  Future<Response<dynamic>> post(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  });
  Future<Response<dynamic>> put(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  });
  Future<Response<dynamic>> delete(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  });
}
