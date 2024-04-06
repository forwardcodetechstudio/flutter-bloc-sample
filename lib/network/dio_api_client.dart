import 'package:dio/dio.dart';
import 'package:fcts_flutter_starter/network/base_api_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioApiClient extends BaseApiClient {
  late Dio dio;

  @override
  void initialize() {
    _initDio();
  }

  @override
  void setupInterceptors() {
    _setupInterceptors();
  }

  void _initDio() {
    dio = Dio();
    dio.options.baseUrl = dotenv.get('BASE_URL');
  }

  void _setupInterceptors() {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  @override
  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    // adding runtime headers
    headers?.forEach((key, value) {
      dio.options.headers.putIfAbsent(key!, () => value);
    });

    return dio.delete(url);
  }

  @override
  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    // adding runtime headers
    headers?.forEach((key, value) {
      dio.options.headers.putIfAbsent(key!, () => value);
    });

    return dio.get(
      url,
      queryParameters: parameters,
    );
  }

  @override
  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    // adding runtime headers
    headers?.forEach((key, value) {
      dio.options.headers.putIfAbsent(key!, () => value);
    });

    return dio.post(url, data: parameters);
  }

  @override
  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? parameters,
    Map<String?, dynamic>? headers,
  }) {
    // adding runtime headers
    headers?.forEach((key, value) {
      dio.options.headers.putIfAbsent(key!, () => value);
    });
    return dio.put(url, data: parameters);
  }
}
