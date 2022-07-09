import 'i_api.dart';
import 'package:http/http.dart' as http;

class ApiHttp implements IApi {

  static const String _baseUrl = "https://dbd-api.herokuapp.com/";

  @override
  Future<http.Response> get<T>(String path, {Map<String, dynamic>? queryParameters, void Function(int p1, int p2)? onReceiveProgress}) {
    return http.get(Uri.parse(_baseUrl + path));
  }
}
