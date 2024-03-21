import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC0thHHtzIShYXYwmcR_hAFIzv3iGc-zAc",
            authDomain: "sigma-apps-yly44m.firebaseapp.com",
            projectId: "sigma-apps-yly44m",
            storageBucket: "sigma-apps-yly44m.appspot.com",
            messagingSenderId: "271346977177",
            appId: "1:271346977177:web:6be526fbdc34bd27b7eb08"));
  } else {
    await Firebase.initializeApp();
  }
}
