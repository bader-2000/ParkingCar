import 'package:flutter/material.dart';
import 'package:flutter_application_1/seccren/PageCheckIn/widget_Component/widgetFirst.dart';
import 'package:flutter_application_1/seccren/PageCheckIn/widget_Component/widgetForth.dart';
import 'package:flutter_application_1/seccren/PageCheckIn/widget_Component/widgetSecand.dart';
import 'package:flutter_application_1/seccren/PageCheckIn/widget_Component/widgetthree%20copy.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/layout.dart';

class CheckInSeccren extends StatefulWidget {
  CheckInSeccren({super.key});

  @override
  State<CheckInSeccren> createState() => _CheckInSeccrenState();
}

class _CheckInSeccrenState extends State<CheckInSeccren> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 800,
              color: Color(0xEDE0F3F1),
              child: Column(children: [
                const layout(titel: 'Entrance'),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.bottomLeft,
                  width: double.infinity,
                  height: 30,
                  child: Container(
                    width: 150,
                    height: 25,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      ' 10 / 2 /2023',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, left: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff0B2D25),
                          blurRadius: 15,
                          offset: Offset(5, 10)),
                    ],
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(26)),
                    ),
                    child: Column(
                      children: [
                        addPhotos(
                            titel: ' Add Photo For Car ',
                            image: 'assets/images/icons8-add-car-96.svg',
                            takePhoto: () {}),
                        SizedBox(
                          width: double.infinity,
                          height: 20,
                        ),
                        addTime(titel1: "From", title2: 'To'),
                        SizedBox(
                          width: double.infinity,
                          height: 20,
                        ),
                        addLaundryService(),
                        SizedBox(
                          width: double.infinity,
                          height: 20,
                        ),
                        addValetService(),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
