import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCpRie1xq0HIUfFDhS70JA8ea9zUdygfuI",
            authDomain: "plushare.firebaseapp.com",
            projectId: "plushare",
            storageBucket: "plushare.appspot.com",
            messagingSenderId: "215045470631",
            appId: "1:215045470631:web:9c32b752c683140ea71e82"));
  } else {
    await Firebase.initializeApp();
  }
}
