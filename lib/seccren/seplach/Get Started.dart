import 'package:flutter/material.dart';
import 'package:flutter_application_1/seccren/auth/Screen/on_Borading_screen.dart';
import 'package:flutter_application_1/seccren/auth/login.dart';

class getStarted extends StatefulWidget {
  getStarted({super.key});

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  var EntarfirstTime = false;

  @override
  void initState() {
    if (EntarfirstTime = true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => loginPage()));
    }

    super.initState();
  }

  // void setState(VoidCallback fn) {
  //   if (EntarfirstTime = true) {
  //     Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => loginPage()));
  //   }
  //   super.setState(fn);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        Positioned(
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.center,
                width: double.infinity,
                height: 275,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(25000, 5000),
                        bottomRight: Radius.elliptical(25000, 5000)),
                    gradient: LinearGradient(
                      colors: [Color(0xff11b9b2c), Color(0xED9DD1B3)],
                      end: Alignment.centerRight,
                      begin: Alignment.bottomLeft,
                    )),
                child: Image.asset(
                  'assets/images/iconApp.png',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                ' Welcome ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              InkWell(
                onTap: () {
                  EntarfirstTime = true;
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => on_Borading_screen(),
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 275,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff1C8F10),
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
