import 'package:flutter/material.dart';

class addLaundryService extends StatefulWidget {
  addLaundryService({super.key});

  @override
  State<addLaundryService> createState() => _addLaundryServiceState();
}

class _addLaundryServiceState extends State<addLaundryService> {
  bool stuts = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 340,
        height: 130,
        decoration: BoxDecoration(
          color: Color(0xEDE0F3F1),
          borderRadius: BorderRadius.all(Radius.circular(64)),
        ),
        child: SwitchListTile(
          value: stuts,
          onChanged: (value) {
            setState(() {
              stuts = value;
            });
          },
          activeColor: Colors.green,
          title: Text(
            ' Laundry Service ',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
