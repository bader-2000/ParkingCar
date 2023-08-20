import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomNaveBar/widget.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../seccren/Home/HomeScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  late int _selectedIndex;
  PageController pageController = PageController();
  @override
  void initState() {
    _selectedIndex = 0;
  }

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(_selectedIndex);
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 132152365350),
        curve: Curves.easeInCubic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          HomeScreen(),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blueGrey,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'home',
                icon: iconNavigation(
                  image: 'assets/Icons/icons8-home-24.svg',
                  tital: 'Home',
                )),
            BottomNavigationBarItem(
                label: 'person',
                icon: iconNavigation(
                    image: 'assets/Icons/icons8-person-30.svg',
                    tital: 'Person')),
            BottomNavigationBarItem(
                label: 'History',
                icon: iconNavigation(
                    image: 'assets/Icons/icons8-logout-rounded-100 (1).svg',
                    tital: 'History')),
            BottomNavigationBarItem(
                label: 'History',
                icon: iconNavigation(
                    image: 'assets/Icons/icons8-history-64 (2).svg',
                    tital: 'History')),
          ],
          onTap: onTapped),
    );
  }
}
