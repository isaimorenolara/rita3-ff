import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBUgprZdQe1XglCpWfXg2kPjyiCgdh_iA8",
            authDomain: "readbooks-87ba4.firebaseapp.com",
            projectId: "readbooks-87ba4",
            storageBucket: "readbooks-87ba4.appspot.com",
            messagingSenderId: "823414079419",
            appId: "1:823414079419:web:b04a35531ec117ef1d8e9e"));
  } else {
    await Firebase.initializeApp();
  }
}
