import 'dart:developer';
import 'dart:io';
import 'package:expense_tracking/constants/constants.dart';
import 'package:expense_tracking/storages/storages.dart';
import 'package:expense_tracking/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UserTokenInterceptor extends Interceptor {
  AppStorage appStorage;
  String baseUrl;

  UserTokenInterceptor({required this.appStorage, required this.baseUrl});

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final newOptions = setBearerToken(options);
    newOptions.baseUrl = baseUrl;
    log('======= API CALL =======');
    log('${newOptions.method}: ${newOptions.uri.toString()}');
    log('======= PAYLOADS =======');
    log(newOptions.data.toString());
    return super.onRequest(newOptions, handler);
  }

  RequestOptions setBearerToken(RequestOptions options) {
    final authorization = options.headers['Authorization'];
    final clientKey = options.headers['x-client-key'];
    final accessToken = getToken();
    log('TOKEN: ${accessToken.toString()}');
    if (authorization == null && accessToken != null) {
      options.headers['Authorization'] = accessToken;
    }
    options.headers['x-udid'] = DeviceInfoHelper.uuid;
    options.headers['x-platform'] = DeviceInfoHelper.platform;
    options.headers['x-app-name'] = 'agent';
    options.headers['x-os-version'] = DeviceInfoHelper.osVersion;
    options.headers['x-app-version'] = DeviceInfoHelper.appVersion;
    if (clientKey == null) {
      final clientKey = Platform.isIOS
          ? dotenv.env['IOS_CLIENT_KEY']
          : dotenv.env['ANDROID_CLIENT_KEY'];
      options.headers['x-client-key'] = clientKey;
    }
    return options;
  }

  String? getToken() => appStorage.readString(key: StorageKey.token.toString());
}
