import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDsY8WcTBgutdQ-_ZVVS9PFGS9juvdgMlA",
            authDomain: "emergencyresponse-psw4pa.firebaseapp.com",
            projectId: "emergencyresponse-psw4pa",
            storageBucket: "emergencyresponse-psw4pa.appspot.com",
            messagingSenderId: "250900557117",
            appId: "1:250900557117:web:8d640563d3b19ee5b66954"));
  } else {
    await Firebase.initializeApp();
  }
}
