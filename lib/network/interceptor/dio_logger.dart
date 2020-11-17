import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';

class DioLoggerInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    LogUtil.v("发送请求: ${options.path}", tag: "DioLoggerInterceptor");
    return options;
  }

  @override
  Future onError(DioError err) async {
    LogUtil.e("请求错误: ${err.request.path} ${err.message}",
        tag: "DioLoggerInterceptor");
    return err;
  }

  @override
  Future onResponse(Response response) async {
    dynamic data = response.data;
    LogUtil.v("收到回应 ${response.request.path} 长度: ${data.length}",
        tag: "DioLoggerInterceptor");
    return response;
  }
}
