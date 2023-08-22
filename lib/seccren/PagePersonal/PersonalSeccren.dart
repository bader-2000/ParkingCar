import 'package:flutter/material.dart';

import '../../widget/layout.dart';

class personSeccren extends StatelessWidget {
  const personSeccren({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Color(0xEDE0F3F1),
        child: Column(children: [
          const layout(titel: 'Personal'),
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
                  SizedBox(
                    width: double.infinity,
                    height: 20,
                  ),
                  Container(
                    transformAlignment: Alignment.centerLeft,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset(
                      'assets/images/man.jpg',
                      fit: BoxFit.fill,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      'Ahmed al korday',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: InkWell(
                        onTap: () {
                          print('Edit');
                        },
                        child: Icon(
                          Icons.edit,
                        )),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      'Ahmed.alkorday@yahoo.com',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: InkWell(
                        onTap: () {
                          print('Edit');
                        },
                        child: Icon(
                          Icons.edit,
                        )),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      'Password : 126548@Ahmed',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: InkWell(
                        onTap: () {
                          print('Edit');
                        },
                        child: Icon(
                          Icons.edit,
                        )),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      'Phone - 0781542658',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: InkWell(
                        onTap: () {
                          print('Edit');
                        },
                        child: Icon(
                          Icons.edit,
                        )),
                  ),

                  Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                  ),
                  // ElevatedButton(
                  //     onPressed: () {},
                  //     child: Container(
                  //       width: 120,
                  //       height: 55,
                  //       decoration: BoxDecoration(
                  //           color: Colors.green,
                  //           borderRadius:
                  //               BorderRadius.all(Radius.circular(16))),
                  //     ))
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
