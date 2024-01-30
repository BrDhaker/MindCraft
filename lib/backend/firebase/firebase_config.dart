import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCkkf8ngLHw10ea7sjgqx-8nXyzoPGsiq4",
            authDomain: "mindcraft-efea3.firebaseapp.com",
            projectId: "mindcraft-efea3",
            storageBucket: "mindcraft-efea3.appspot.com",
            messagingSenderId: "835044332628",
            appId: "1:835044332628:web:b4428eeec1a510816609c1",
            measurementId: "G-CJ24VV50NC"));
  } else {
    await Firebase.initializeApp();
  }
}
