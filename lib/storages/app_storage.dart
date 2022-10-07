import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'base_storage.dart';

class AppStorage extends BaseStorage {
  SharedPreferences sharedPreferences;
  AppStorage({required this.sharedPreferences});

  @override
  String? readString({required String key}) {
    return sharedPreferences.getString(key);
  }

  @override
  Future<bool> writeString({required String key, required String value}) {
    return sharedPreferences.setString(key, value);
  }

  @override
  Map<String, dynamic>? readObject({required String key}) {
    final String? json = sharedPreferences.getString(key);
    if (json == null) return null;

    return jsonDecode(json) as Map<String, dynamic>;
  }

  @override
  Future<bool> writeObject({
    required String key,
    required Map<String, dynamic> json,
  }) {
    final String string = jsonEncode(json);
    return sharedPreferences.setString(key, string);
  }

  @override
  Future<bool> delete({required String key}) {
    return sharedPreferences.remove(key);
  }
}
