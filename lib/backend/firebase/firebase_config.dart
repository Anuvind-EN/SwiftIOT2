import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCD3k4422fmIlQxIdWeo6mFNI2o6q2JClc",
            authDomain: "swift-us-aa6f9.firebaseapp.com",
            projectId: "swift-us-aa6f9",
            storageBucket: "swift-us-aa6f9.appspot.com",
            messagingSenderId: "757387428223",
            appId: "1:757387428223:web:d1f97f5d386b17f8965a4a",
            measurementId: "G-G00857FZVE"));
  } else {
    await Firebase.initializeApp();
  }
}
