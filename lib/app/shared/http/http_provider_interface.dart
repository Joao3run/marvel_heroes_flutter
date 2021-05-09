abstract class IHttpProvider {
  Future<dynamic> get(String url, Map<String, dynamic>? params);
}
