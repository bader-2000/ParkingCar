import 'package:flutter/material.dart';
import 'package:flutter_application_1/seccren/PageHistory/widgetHistory.dart';

import '../../widget/layout.dart';

class HistorySeccren extends StatelessWidget {
  const HistorySeccren({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.infinity,
        color: Color(0xEDE0F3F1),
        child: Column(children: [
          const layout(titel: 'History'),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 400,
            height: 600,
            child: ListView.separated(
                //shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                //controller: ScrollController(),
                itemBuilder: (context, index) {
                  return ItemHistory(
                    DueTime: '${itemHistory[index]['item'][0]}',
                    Location: '${itemHistory[index]['item'][1]}',
                    Laundry: '${itemHistory[index]['item'][2]}',
                    liningup: '${itemHistory[index]['item'][3]}',
                    image: '${itemHistory[index]['image']}',
                    date: '${itemHistory[index]['date']}',
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 30,
                    ),
                itemCount: itemHistory.length),
          ),
        ]),
      ),
    ));
  }
}

List<Map<String, dynamic>> itemHistory = [
  {
    'date': '1/2/2003',
    'image': 'assets/images/Car.jpg',
    'item': ["12-Hour ", "P-2", "Yas", "No"],
  },
  {
    'date': '1/2/2003',
    'image': 'assets/images/Car.jpg',
    'item': ["12-Hour ", "P-2", "Yas", "No"],
  },
  {
    'date': '1/2/2003',
    'image': 'assets/images/Car.jpg',
    'item': ["12-Hour ", "P-2", "Yas", "No"],
  },
  {
    'date': '1/2/2003',
    'image': 'assets/images/Car.jpg',
    'item': ["12-Hour ", "P-2", "Yas", "No"],
  },
  {
    'date': '1/2/2003',
    'image': 'assets/images/Car.jpg',
    'item': ["12-Hour ", "P-2", "Yas", "No"],
  },
  {
    'date': '1/2/2003',
    'image': 'assets/images/Car.jpg',
    'item': ["12-Hour ", "P-2", "Yas", "No"],
  }
];
