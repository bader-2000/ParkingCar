import 'package:flutter/material.dart';

class addValetService extends StatefulWidget {
  addValetService({super.key});

  @override
  State<addValetService> createState() => _addValetServiceState();
}

class _addValetServiceState extends State<addValetService> {
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
            ' Valet Service ',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
