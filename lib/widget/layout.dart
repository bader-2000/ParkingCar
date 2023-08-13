import 'package:flutter/material.dart';

class layout extends StatelessWidget {
  const layout({super.key, required this.titel});

  final String titel;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: 120,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(25000, 5000),
                bottomRight: Radius.elliptical(25000, 5000)),
            gradient: LinearGradient(
              colors: [Color(0xff11b9b2c), Color(0xED9DD1B3)],
              end: Alignment.centerRight,
              begin: Alignment.bottomLeft,
            )),
      ),
      Container(
        padding: EdgeInsets.only(left: 30),
        alignment: Alignment.bottomLeft,
        width: double.infinity,
        height: 80,
        child: Text(
          '$titel',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}
