import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/utils/services/local/secure_storage.dart';

class UserCredentialManager {
  static void saveUserCredential({required UserCredential userCredential}) async {
    await SecureStorage.writeData(
        key: 'username', value: '${userCredential.user?.displayName}');
    await SecureStorage.writeData(
        key: 'uId', value: '${userCredential.user?.uid}');
    await SecureStorage.writeData(
        key: 'email', value: '${userCredential.user?.email}');
  }

  static Future<Map<String, String?>> getUserCredential() async {
    SecureStorage.getData(key: 'uId').then((value) => print(value));
    return {
      'username': await SecureStorage.getData(key: 'username'),
      'uId': await SecureStorage.getData(key: 'uId'),
      'email': await SecureStorage.getData(key: 'email'),
    };
  }
}
