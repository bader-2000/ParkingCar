import 'package:flutter/material.dart';
import '../../widget/homeItem.dart';
import '../../widget/layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xEDE0F3F1),
          child: Column(
            children: [
              const layout(titel: 'Parking'),
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
                    '${iOrder['Date']}',
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
                        //  blurStyle: BlurStyle.inner,
                        offset: Offset(5, 10)),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(26))),
                  child: Column(
                    children: [
                      Container(
                          width: 370,
                          height: 233,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(26))),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26))),
                            child: Image.asset(
                              '${iOrder['Image']}',
                              width: 370,
                              height: 233,
                              scale: 2.3,
                              fit: BoxFit.scaleDown,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      homeItem(
                          title: 'duetime',
                          information: '${iOrder['Item'][0]}'),
                      SizedBox(
                        height: 15,
                      ),
                      homeItem(
                          title: 'location',
                          information: '${iOrder['Item'][1]}'),
                      SizedBox(
                        height: 15,
                      ),
                      homeItem(
                          title: 'laundry',
                          information: '${iOrder['Item'][2]}'),
                      SizedBox(
                        height: 15,
                      ),
                      homeItem(
                          title: 'duetime',
                          information: '${iOrder['Item'][3]}'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                  onTap: () {
                    print("Done ");
                  },
                  child: Container(
                    width: 336,
                    height: 64,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Tatol : ${iOrder['Price']}  \$ ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Map iOrder = {
  'Date': ' 1 / 2 / 2023 ',
  'Image': 'assets/images/Car.jpg',
  'Price': 12.13,
  'Item': [
    '1 Hour',
    'P-12',
    '10',
    '20',
  ]
};
