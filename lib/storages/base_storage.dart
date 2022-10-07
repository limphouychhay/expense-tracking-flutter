abstract class BaseStorage {
  String? readString({required String key});
  Future<bool> writeString({required String key, required String value});
  Map<String, dynamic>? readObject({required String key});
  Future<bool> writeObject(
      {required String key, required Map<String, dynamic> json});
  Future<bool> delete({required String key});
}
