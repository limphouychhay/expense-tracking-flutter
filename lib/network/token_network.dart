import 'package:expense_tracking/network/interceptors/user_token_interceptor.dart';
import 'package:expense_tracking/storages/storages.dart';
import 'package:dio/dio.dart';

class TokenNetwork {
  Dio http = Dio();
  final AppStorage appStorage;
  final String baseUrl;

  TokenNetwork({required this.baseUrl, required this.appStorage}) {
    addInterceptor(
        UserTokenInterceptor(appStorage: appStorage, baseUrl: baseUrl));
  }

  dynamic addInterceptor(Interceptor interceptor) {
    http.interceptors.add(interceptor);
  }

  dynamic removeInterceptor(Interceptor interceptor) {
    http.interceptors.remove(interceptor);
  }
}
