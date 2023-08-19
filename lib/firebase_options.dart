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
        return macos;
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
    apiKey: 'AIzaSyAYjD0ajqnPLzdo3pMursaG-Xqx6hn8eJ0',
    appId: '1:235492985108:web:58ba08b4cd5740eed79a01',
    messagingSenderId: '235492985108',
    projectId: 'parkingcar-a07cb',
    authDomain: 'parkingcar-a07cb.firebaseapp.com',
    storageBucket: 'parkingcar-a07cb.appspot.com',
    measurementId: 'G-V6SX2WTFXX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzA7cn-8MaJSouoWrEZReMnv_nvp6ksZg',
    appId: '1:235492985108:android:4e2c7f191185a45ad79a01',
    messagingSenderId: '235492985108',
    projectId: 'parkingcar-a07cb',
    storageBucket: 'parkingcar-a07cb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0iCH8LgxSzCjDi2a8X2I3Aa15bAH_IUg',
    appId: '1:235492985108:ios:5f0cb112cc08dcd1d79a01',
    messagingSenderId: '235492985108',
    projectId: 'parkingcar-a07cb',
    storageBucket: 'parkingcar-a07cb.appspot.com',
    iosClientId: '235492985108-2h43cpiosqp6mgntrr39r207jliit5eh.apps.googleusercontent.com',
    iosBundleId: 'com.example.parkingCar',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0iCH8LgxSzCjDi2a8X2I3Aa15bAH_IUg',
    appId: '1:235492985108:ios:2ac576ae86ef686ed79a01',
    messagingSenderId: '235492985108',
    projectId: 'parkingcar-a07cb',
    storageBucket: 'parkingcar-a07cb.appspot.com',
    iosClientId: '235492985108-0d7mj5khemaodscm7st7p8f4maet1p3h.apps.googleusercontent.com',
    iosBundleId: 'com.example.parkingCar.RunnerTests',
  );
}
