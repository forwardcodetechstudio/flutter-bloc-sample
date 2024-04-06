import 'package:dio/dio.dart';
import 'package:fcts_flutter_starter/network/api_service.dart';
import 'package:fcts_flutter_starter/network/dio_api_client.dart';

class ApiServiceImpl implements ApiService {
  ApiServiceImpl(this.apiClient);

  final DioApiClient apiClient;

  @override
  Future<Response<dynamic>> delete(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    return apiClient.delete(url);
  }

  @override
  Future<Response<dynamic>> get(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    return apiClient.get(url);
  }

  @override
  Future<Response<dynamic>> post(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    return apiClient.post(url);
  }

  @override
  Future<Response<dynamic>> put(
    String url, {
    Map<String?, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    return apiClient.put(url);
  }
}
