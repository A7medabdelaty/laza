import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';

class FirebaseService {
  static void configureFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}