
import 'package:deadbydaylighttapp/app/core/api/i_api.dart';
import 'package:dio/dio.dart';

class ApiDio implements IApi {
  static const String _baseUrl = "https://dbd-api.herokuapp.com/";

  static final Dio _rest = Dio(BaseOptions(
    baseUrl: _baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 600000,
    receiveTimeout: 600000,
  ));

  @override
  Future<Response<T>> get<T>(String path, {Map<String, dynamic>? queryParameters, void Function(int p1, int p2)? onReceiveProgress}) {
    return _rest.get(path, queryParameters: queryParameters);
  }
}
