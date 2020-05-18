import 'dart:async';

import 'package:chopper/chopper.dart';

class JwtAuthHeaderInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    final token = request.headers["Authorization"];
    if (token != null) request.headers["Authorization"] = "Bearer $token";
    print(request.headers["Authorization"]);
    return request;
  }
}