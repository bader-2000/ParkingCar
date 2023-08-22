import 'package:flutter/material.dart';
import 'onBordingModels.dart';

class onBordingwidget extends StatelessWidget {
  final onBordingModel model;

  onBordingwidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: model.Bcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.values[3],
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
                      model.image,
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                  ),
                  Text(
                    model.titel,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    model.descreption,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    model.subtitel,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
