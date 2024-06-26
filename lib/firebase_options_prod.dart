// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_prod.dart';
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
    apiKey: 'AIzaSyDYExP7rg4xiQLoQ5BBhWGT1LvYGHDgPZs',
    appId: '1:607400634358:web:e4787c980ba0ee6ae309d7',
    messagingSenderId: '607400634358',
    projectId: 'tanga-defense',
    authDomain: 'tanga-defense.firebaseapp.com',
    storageBucket: 'tanga-defense.appspot.com',
    measurementId: 'G-P15FYFVW3C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmP0cEsYQoS86RJoXYQD-9HCFuF029pWc',
    appId: '1:607400634358:android:3415e6927c60f21ce309d7',
    messagingSenderId: '607400634358',
    projectId: 'tanga-defense',
    storageBucket: 'tanga-defense.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkWLTcgoBL8qhQl_J1gj3ixjA5u3p5axY',
    appId: '1:607400634358:ios:86f279a7b2ebdcade309d7',
    messagingSenderId: '607400634358',
    projectId: 'tanga-defense',
    storageBucket: 'tanga-defense.appspot.com',
    iosBundleId: 'com.flutter.template',
  );
}
