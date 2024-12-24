import 'dart:developer';

import 'package:dio/dio.dart';

const _baseHeaders = {
  'Content-Type': 'application/json',
  'charset': 'utf-8',
};

class UnauthorizedRequestInterceptor extends QueuedInterceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll(_baseHeaders);
    log('${options.method} >>> ${options.uri}');
    log('Query parameteres: ${options.queryParameters}');
    log('Request data: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    log('${response.requestOptions.method} <<< ${response.requestOptions.uri}');
    log('Response data: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    log('${err.requestOptions.method} <<< ${err.requestOptions.uri}');
    log('Error data: ${err.response?.data}');
    handler.next(err);
    super.onError(err, handler);
  }
}

class AuthorizedRequestInterceptor extends UnauthorizedRequestInterceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //TODO: we need token
    super.onRequest(options, handler);
  }
}
