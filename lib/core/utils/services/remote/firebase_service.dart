import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  static Future<FirebaseApp> configureFirebase() async {
    return await Firebase.initializeApp();
  }
}
