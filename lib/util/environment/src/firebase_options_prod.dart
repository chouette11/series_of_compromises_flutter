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
    apiKey: 'AIzaSyCa6Lxfo7RRSve7PRrD86WWC3XYEoZ70Qc',
    appId: '1:673045133489:web:ba6772abc0bb9437dd4a90',
    messagingSenderId: '673045133489',
    projectId: 'ai-werewolf',
    authDomain: 'ai-werewolf.firebaseapp.com',
    storageBucket: 'ai-werewolf.appspot.com',
    measurementId: 'G-9ZY9MK5LCP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9IgqqDL62XxpRvMChr7TVR_L5hJ6tNSc',
    appId: '1:673045133489:android:3c927fa10efd3ee2dd4a90',
    messagingSenderId: '673045133489',
    projectId: 'ai-werewolf',
    storageBucket: 'ai-werewolf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDruAb-OGbnPdheqp8QdeZjKfGegeymqfQ',
    appId: '1:673045133489:ios:80cd75fbb2ce25f3dd4a90',
    messagingSenderId: '673045133489',
    projectId: 'ai-werewolf',
    storageBucket: 'ai-werewolf.appspot.com',
    iosBundleId: 'com.AI.werewolf',
  );
}
