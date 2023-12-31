import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomNaveBar/bouttenNavegation.dart';
import 'package:flutter_application_1/seccren/Auth/widget.dart';
import 'package:flutter_application_1/seccren/PageSingIn/seccrenSingIn.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
                    top: 450,
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => homeScreen()));
                      },
                      child: Container(
                        height: 67,
                        width: 200,
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
                              'LogIn',
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      // height: 40,
                      width: double.infinity,
                      child: Form(
                        key: _formKeyE,
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
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)),
                              contentPadding: EdgeInsets.all(10),
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
                        key: _formKeyP,
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
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)),
                              contentPadding: EdgeInsets.all(10),
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
                      height: 150,
                    ),
                    buttomSingUP(
                      text: '   Sing UP with Google',
                      image: 'assets/Icons/icons8-SingGoogle.svg',
                      ontap: () {
                        if (_formKeyE.currentState!.validate()) {
                          if (true) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('Done')));
                          }
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buttomSingUP(
                      text: 'Sing UP with Facebook',
                      image: 'assets/Icons/icons8-Singfacebook.svg',
                      ontap: () {
                        if (_formKeyP.currentState!.validate()) {
                          if (true) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Corrct')));
                          }
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => seccrenSingIn(),
                        ));
                      },
                      child: Text(
                        'Are you Create New Account ?',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
                Positioned(
                    top: 170,
                    left: 10,
                    child: Text(
                      'Welcome Back',
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
