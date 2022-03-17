import 'package:dio/dio.dart';

class HttpRequest {
  static dio;

  BaseOptions options;

  HttpRequest([ BaseOptions? baseOptions]){
    // ignore: prefer_conditional_assignment
    if (baseOptions == null) {
      baseOptions = BaseOptions(
        baseUrl: 'http:192.168.1.1:8080',  // 配置url
        connectTimeout: 5000, // 超时配置
        receiveTimeout: 3000, // 接受超时
      );
    }
    options = baseOptions;
    dio = Dio(options);
    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      return options;
    }, onResponse: (Response response) {
      return response;
    }, onError: (DioError e) {
      print('请求发生错误了～～～～～ $e');
      return e;
    }));
  }
}

// GET 请求

Future get(String path,{queryParameters Optins options, CancelToken cancelToken}) async {
  return await dio.get(path, queryParameters: queryParameters, options: options, cancelToken: cancelToken);
}

HttpRequest httpRequest = new HttpRequest();