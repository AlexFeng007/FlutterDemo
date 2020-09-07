import 'package:dio/dio.dart';

class FBHttpRequest {
  static final Dio dio = Dio();

  static Future<T> request<T>(
    String url, {
    String method = "get",
    Map<String, dynamic> params,
  }) async {
    //1: 创建单独配置
    final options = Options(method: method);

    //2: 发送网络请求
    try {
      Response response = await dio.request(url,queryParameters:params,options: options );
      return response.data;
    } on DioError catch(e) {
      return Future.error(e);
    }
  }
}
