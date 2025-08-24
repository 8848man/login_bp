import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:login_bp/storage/interfaces/i_storage.dart';
import 'dart:convert';

class SecureStorageService implements IStorage {
  final FlutterSecureStorage _storage;

  SecureStorageService({FlutterSecureStorage? storage})
    : _storage = storage ?? const FlutterSecureStorage();

  @override
  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  @override
  Future<void> clear() async {
    await _storage.deleteAll();
  }

  /// JSON 객체 저장
  Future<void> writeJson(String key, Map<String, dynamic> json) async {
    final jsonString = jsonEncode(json);
    await write(key, jsonString);
  }

  /// JSON 객체 읽기
  Future<Map<String, dynamic>?> readJson(String key) async {
    final jsonString = await read(key);
    if (jsonString == null) return null;
    return jsonDecode(jsonString) as Map<String, dynamic>;
  }
}
