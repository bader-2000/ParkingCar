import 'dart:async';
import 'package:flutter/material.dart';
import 'Get Started.dart';

class Seplash extends StatefulWidget {
  Seplash({super.key});

  @override
  State<Seplash> createState() => _SeplashState();
}

class _SeplashState extends State<Seplash> {
  // Timer timer = Timer(Duration(microseconds: 10000), () {
  //   void initState() {
  //     navigator?.of(context).push();
  //   }
  // });

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
        return getStarted();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey,
      child: Center(
        child: Image.asset('assets/images/iconApp.png'),
      ),
    ));
  }
}
