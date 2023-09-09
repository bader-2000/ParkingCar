import 'package:flutter/material.dart';

class addTime extends StatefulWidget {
  addTime({super.key, required this.titel1, required this.title2});
  final String titel1;
  final String title2;

  @override
  State<addTime> createState() => _addTimeState();
}

class _addTimeState extends State<addTime> {
  TextEditingController ControllertextField = TextEditingController();

  final formKeyF = GlobalKey<FormState>();

  final formKeyT = GlobalKey<FormState>();

  @override
  void initState() {
    ControllertextField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    ControllertextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            widget.titel1,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              color: Colors.white,
              width: 70,
              height: 35,
              child: Form(
                key: formKeyF,
                child: TextField(
                  controller: ControllertextField,
                  keyboardType: TextInputType.number,
                  onTap: () {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              )),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.title2,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              color: Colors.white,
              width: 70,
              height: 35,
              child: Form(
                key: formKeyT,
                child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    )),
              )),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
