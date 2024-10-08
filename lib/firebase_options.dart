// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCQJi_IAcpH6pV1vwnRGvzuPpmMp1N8RhQ',
    appId: '1:75863991374:web:f0d5ec712f5204d4338f1f',
    messagingSenderId: '75863991374',
    projectId: 'android-app-fd91f',
    authDomain: 'android-app-fd91f.firebaseapp.com',
    storageBucket: 'android-app-fd91f.appspot.com',
    measurementId: 'G-YLEN0KXTPS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAm_WsbAeF7DKFJzM8eDTeJ4EUj3mMfWII',
    appId: '1:75863991374:android:71a923cc77b4d3d4338f1f',
    messagingSenderId: '75863991374',
    projectId: 'android-app-fd91f',
    storageBucket: 'android-app-fd91f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOwoVfa8H9OC-viR1JZbWaYUvBgK498Kg',
    appId: '1:75863991374:ios:6ea8ec799b9a9ac5338f1f',
    messagingSenderId: '75863991374',
    projectId: 'android-app-fd91f',
    storageBucket: 'android-app-fd91f.appspot.com',
    iosBundleId: 'com.example.invoiceapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOwoVfa8H9OC-viR1JZbWaYUvBgK498Kg',
    appId: '1:75863991374:ios:6ea8ec799b9a9ac5338f1f',
    messagingSenderId: '75863991374',
    projectId: 'android-app-fd91f',
    storageBucket: 'android-app-fd91f.appspot.com',
    iosBundleId: 'com.example.invoiceapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCQJi_IAcpH6pV1vwnRGvzuPpmMp1N8RhQ',
    appId: '1:75863991374:web:07ff340cc2549508338f1f',
    messagingSenderId: '75863991374',
    projectId: 'android-app-fd91f',
    authDomain: 'android-app-fd91f.firebaseapp.com',
    storageBucket: 'android-app-fd91f.appspot.com',
    measurementId: 'G-7WXDRJNLL4',
  );
}
