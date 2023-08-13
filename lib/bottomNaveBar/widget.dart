import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iconNavigation extends StatelessWidget {
  const iconNavigation({super.key, required this.image, required this.tital});
  final String image;
  final String tital;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 40,
            width: 56,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: SvgPicture.asset(
              image,
            )),
        Text(
          tital,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
