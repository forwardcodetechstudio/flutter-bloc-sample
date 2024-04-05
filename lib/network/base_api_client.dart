abstract class BaseApiClient {
  void initialize();
  void setupInterceptors();

  Future<dynamic> get(String url, {Map<String, dynamic> parameters});
  Future<dynamic> post(String url, {Map<String, dynamic> parameters});
  Future<dynamic> put(String url, {Map<String, dynamic> parameters});
  Future<dynamic> delete(String url, {Map<String, dynamic> parameters});
}
