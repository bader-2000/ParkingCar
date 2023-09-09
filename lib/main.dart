import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/controller.dart';
import 'package:flutter_application_1/seccren/Auth/Screen/login.dart';
import 'package:flutter_application_1/seccren/PageCheckIn/CheckInSeccren.dart';
import 'package:flutter_application_1/seccren/PageHistory/HistorySeccren.dart';
import 'package:flutter_application_1/seccren/PageSingIn/seccrenSingIn.dart';
import 'package:flutter_application_1/seccren/PageSplach/Seplash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => controllerprovider_1()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'parkinCar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Seplash(),
      // HistorySeccren(),

      // personSeccren(),

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
