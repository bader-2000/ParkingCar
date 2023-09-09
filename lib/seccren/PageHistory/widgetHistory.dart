import 'package:flutter/material.dart';

class ItemHistory extends StatelessWidget {
  ItemHistory({
    super.key,
    this.DueTime,
    this.Location,
    this.Laundry,
    this.liningup,
    this.image,
    this.date,
  });
  final DueTime;
  final Location;
  final Laundry;
  final liningup;
  final image;
  final date;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xff0B2D25), blurRadius: 15, offset: Offset(5, 10)),
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
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 30,
              child: Container(
                width: 150,
                height: 25,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  date,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Due Time',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Location',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Laundry',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'lining up',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      DueTime,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      Location,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      Laundry,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      liningup,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
