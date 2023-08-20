import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/controller.dart';
import 'package:flutter_application_1/seccren/seplach/Seplash.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

// // void main() {
// / WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   FlutterNativeSplash.remove();
//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: (_) => piSeplach()),
//     ],
//     child: const MyApp(),
//   ));
//  }

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initialization(null);
  // FlutterNativeSplash.preserve(widgetsBinding: initialization);

  FlutterNativeSplash.removeAfter(initialization);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => controllerprovider_1()),
    ],
    child: const MyApp(),
  ));
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Seplash(),

      //on_Borading_screen(),

      // MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(create: (_) => controllerprovider_1()),
      //     ChangeNotifierProvider(create: (_) => controllerprovider_2())
      //   ],
      //   child: providerSeccrenState(),
      // )
      // pagefirst(),
      // MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(create: (_) => controllerprovider_1()),
      //     ChangeNotifierProvider(create: (_) => controllerprovider_2())
      //   ],
      //   child: providerSeccrenState(),
      // )

      // login(),
      // home: homeScreen(),
    );
  }
}
