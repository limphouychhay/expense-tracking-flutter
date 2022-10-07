import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:expense_tracking/network/token_network.dart';
import 'package:expense_tracking/storages/storages.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseNetwork {
  late Response<dynamic> response;

  Future<T> post<T>({dynamic payload, String? contentType}) async {
    final TokenNetwork network = await _network();
    if (contentType != null) {
      network.http.options.headers['content-type'] = contentType;
    }
    // network.http.options.headers
    response = await network.http.post(requestUrl(), data: payload);
    log(response.toString());
    final json = jsonDecode(response.toString());
    log('REQUEST POST SUCCESS');
    return responseType(json) as T;
  }

  Future<T> get<T>({Map<String, dynamic>? queryParameters}) async {
    final TokenNetwork network = await _network();
    response =
        await network.http.get(requestUrl(), queryParameters: queryParameters);
    final json = jsonDecode(response.toString());
    log('REQUEST GET SUCCESS');
    return responseType(json) as T;
  }

  Future<T> put<T>({dynamic payload}) async {
    final TokenNetwork network = await _network();
    response = await network.http.put(requestUrl(), data: payload);
    log('REQUEST PUT SUCCESS');
    final json = jsonDecode(response.toString());
    return responseType(json) as T;
  }

  Future downloadPost({dynamic payload, required String savePath}) async {
    final TokenNetwork network = await _network();
    network.http.options.responseType = ResponseType.bytes;
    response = await network.http.post(requestUrl(), data: payload);
    log('REQUEST DOWNLOAD POST SUCCESS');
    File file = File(savePath);
    var raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();
    log('DOWNLOAD SUCCESS');
  }

  Future downloadGet(
      {dynamic queryParameters, required String savePath}) async {
    final TokenNetwork network = await _network();
    network.http.options.responseType = ResponseType.bytes;
    response =
        await network.http.get(requestUrl(), queryParameters: queryParameters);
    log('REQUEST DOWNLOAD GET SUCCESS');
    File file = File(savePath);
    var raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();
    log('DOWNLOAD SUCCESS');
  }

  Future<TokenNetwork> _network() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final AppStorage appStorage =
        AppStorage(sharedPreferences: sharedPreferences);
    final TokenNetwork tokenNetwork = TokenNetwork(
      baseUrl: dotenv.env['BASE_URL'] ?? '',
      appStorage: appStorage,
    );
    return tokenNetwork;
  }

  dynamic responseType(dynamic json) {
    throw 'Missing response type';
  }

  String requestUrl() {
    throw 'Missing request url';
  }
}
