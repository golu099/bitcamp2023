import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBLDKaH6J2VQLFDsVrCeKCA6xsogAHW4sQ",
            authDomain: "bitcamp2023-af3b6.firebaseapp.com",
            projectId: "bitcamp2023-af3b6",
            storageBucket: "bitcamp2023-af3b6.appspot.com",
            messagingSenderId: "234332618144",
            appId: "1:234332618144:web:73e6efbf8e99f6b30678c5",
            measurementId: "G-MXG6W0GGSC"));
  } else {
    await Firebase.initializeApp();
  }
}
