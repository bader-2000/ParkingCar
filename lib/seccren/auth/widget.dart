import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class buttomSingUP extends StatelessWidget {
  buttomSingUP({
    super.key,
    required this.text,
    required this.image,
    required this.ontap,
  });
  final String text;
  final String image;
  final ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          width: 360,
          height: 53,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(13)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              SvgPicture.asset(
                image,
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          )),
    );
  }
}
