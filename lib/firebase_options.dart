// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCMmnpYour7f0aRZIm1vcFVbMB6BPQW1GQ',
    appId: '1:357367421471:web:4228e1a62e6e2fbcca532a',
    messagingSenderId: '357367421471',
    projectId: 'app-colores',
    authDomain: 'app-colores.firebaseapp.com',
    databaseURL: 'https://app-colores-default-rtdb.firebaseio.com',
    storageBucket: 'app-colores.appspot.com',
    measurementId: 'G-9G4Z4077NV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrOvbsyErAgOtFBaRVMYIomsLD6D1OobE',
    appId: '1:357367421471:android:1336047fa7648649ca532a',
    messagingSenderId: '357367421471',
    projectId: 'app-colores',
    databaseURL: 'https://app-colores-default-rtdb.firebaseio.com',
    storageBucket: 'app-colores.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDQoIuZj4weK13Rq72ianq61t2KJJ5-C4',
    appId: '1:357367421471:ios:048d89b1ac74ff6bca532a',
    messagingSenderId: '357367421471',
    projectId: 'app-colores',
    databaseURL: 'https://app-colores-default-rtdb.firebaseio.com',
    storageBucket: 'app-colores.appspot.com',
    iosBundleId: 'com.example.practica3',
  );
}
