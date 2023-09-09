import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class addPhotos extends StatelessWidget {
  addPhotos(
      {super.key,
      required this.titel,
      required this.image,
      required this.takePhoto});
  final String titel;
  final String image;
  final Function() takePhoto;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 650,
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
      child: Column(children: [
        Container(
          width: 340,
          height: 130,
          decoration: BoxDecoration(
            color: Color(0xEDE0F3F1),
            borderRadius: BorderRadius.all(Radius.circular(64)),
          ),
          child: Row(
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                titel,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Spacer(
                flex: 3,
              ),
              InkWell(
                  onTap: takePhoto,
                  child: SvgPicture.asset(
                    image,
                    width: 65,
                    height: 65,
                  )),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
