import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomNaveBar/bouttenNavegation.dart';
import 'package:flutter_application_1/seccren/Auth/Screen/login.dart';
import 'package:flutter_application_1/seccren/Auth/widget.dart';
import 'package:get/get.dart';

class seccrenSingIn extends StatefulWidget {
  seccrenSingIn({super.key});

  @override
  State<seccrenSingIn> createState() => _seccrenSingInState();
}

class _seccrenSingInState extends State<seccrenSingIn> {


  late TextEditingController textFieldController;
  final _formKeyE = GlobalKey<FormState>();
  final _formKeyP = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    textFieldController = TextEditingController();
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: Color(0xffE0F3F1),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                    top: 30,
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => loginPage()));
                      },
                      child: Container(
                        height: 67,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(25)),
                            color: Color(0xff248621),
                            shape: BoxShape.rectangle),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '  Back',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 60,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: -50,
                    left: -60,
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xffD2EDE4), shape: BoxShape.circle),
                    )),
                Positioned(
                    top: 140,
                    left: 30,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffD2EDE4), shape: BoxShape.circle),
                    )),
                Positioned(
                  top: 144,
                  left: 146,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Color(0xffD2EDE4), shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  top: 148,
                  right: 16,
                  child: Container(
                    height: 121,
                    width: 121,
                    decoration: BoxDecoration(
                        color: Color(0xffD2EDE4), shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Divider(
                      height: 4,
                      color: Colors.black,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      child: Form(
                        // key: _formKeyE,
                        child: TextFormField(
                          controller: textFieldController,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return ' this fielld is required';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              label: Text(
                                'Name',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(
                                size: 30,
                                Icons.person_outlined,
                                color: Colors.green,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      child: Form(
                        //   key: _formKeyE,
                        child: TextFormField(
                          controller: textFieldController,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return ' this fielld is required';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              label: Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(
                                size: 30,
                                Icons.email,
                                color: Colors.green,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      child: Form(
                        //  key: _formKeyP,
                        child: TextFormField(
                          controller: textFieldController,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return ' this fielld is required';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              label: Text(
                                ' Add photo',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(
                                size: 30,
                                Icons.photo_camera_front_outlined,
                                color: Colors.green,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      child: Form(
                        // key: _formKeyP,
                        child: TextFormField(
                          controller: textFieldController,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return ' this fielld is required';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              label: Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(
                                size: 30,
                                Icons.lock,
                                color: Colors.green,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      child: Form(
                        // key: _formKeyP,
                        child: TextFormField(
                          controller: textFieldController,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return ' this fielld is required';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              label: Text(
                                ' Re-Password ',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(
                                size: 30,
                                Icons.lock,
                                color: Colors.green,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          ' Done To Regestar ',
                          textAlign: TextAlign.center,
                        )));
                      },
                      child: Container(
                          width: 360,
                          height: 53,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Regestar',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => loginPage(),
                        ));
                      },
                      child: Text(
                        'Do you have an account ! Sign In',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
                Positioned(
                    top: 100,
                    left: 10,
                    child: Text(
                      'Create\nAccount',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xff248621),
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
