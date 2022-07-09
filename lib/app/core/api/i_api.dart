


abstract class IApi {

  Future<dynamic> get<T>(String path, {
  Map<String, dynamic>? queryParameters,
  void Function(int, int)? onReceiveProgress,
});

}
