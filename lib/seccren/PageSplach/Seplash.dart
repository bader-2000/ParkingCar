import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomNaveBar/bouttenNavegation.dart';

import 'package:flutter_application_1/seccren/Auth/Screen/on_Borading_screen.dart';
import 'package:flutter_application_1/seccren/Auth/Screen/login.dart';
import 'package:flutter_application_1/seccren/PageSplach/spHelper.dart';

class Seplash extends StatefulWidget {
  Seplash({super.key});

  @override
  State<Seplash> createState() => _SeplashState();
}

class _SeplashState extends State<Seplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
        return on_Borading_screen();
      }));
    });

    void chickStateUser() {
      bool stutes = SPHelper.spHelper.isNew();
      if (stutes = true) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => homeScreen()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => loginPage()));
      }
    }
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
