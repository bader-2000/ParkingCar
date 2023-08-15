import 'package:flutter/material.dart';

class addNew extends StatefulWidget {
  const addNew({super.key});

  @override
  State<addNew> createState() => _addNewState();
}

class _addNewState extends State<addNew> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('User Name'),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Password'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
