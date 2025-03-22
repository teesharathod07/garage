import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBguyZz2hxGeYSD7aEX6v-F2TsUdIr23AM",
            authDomain: "garage-guru-vj2x02.firebaseapp.com",
            projectId: "garage-guru-vj2x02",
            storageBucket: "garage-guru-vj2x02.firebasestorage.app",
            messagingSenderId: "136970699723",
            appId: "1:136970699723:web:a0838331b86d15957e2c4e"));
  } else {
    await Firebase.initializeApp();
  }
}
