import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const storage = FlutterSecureStorage();

  static Future<void> writeData({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  static Future<String?> getData({required String key}) async {
    return await storage.read(key: key);
  }
}
