import 'package:flutter/material.dart';

class homeItem extends StatelessWidget {
  const homeItem({super.key, required this.title, required this.information});
  final String title;
  final String information;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          children: [
            SizedBox(
              width: 60,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Text(
              information,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ));
  }
}
