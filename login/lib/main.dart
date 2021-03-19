import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Display',
      theme:
          ThemeData(primarySwatch: Colors.blue, accentColor: Colors.pink[800]),
      home: LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _editingControllerUser = TextEditingController();
  TextEditingController _editingControllerPassword = TextEditingController();
  TextEditingController _editingControllerRepeat = TextEditingController();
  bool _stCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.alphaBlend(
            Color.fromRGBO(255, 25, 25, 0.7), Colors.blue[800]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(190, 82, 105, 1),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(20, 25, 20, 0.75),
                        blurRadius: 28.0,
                        spreadRadius: 1.0)
                  ],
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "UserName",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: _editingControllerUser,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Theme.of(context).accentColor,
                            size: 30.0,
                          ),
                          focusColor: Colors.pink[900],
                          fillColor: Colors.white,
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: _editingControllerPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Theme.of(context).accentColor,
                            size: 30.0,
                          ),
                          focusColor: Colors.pink[900],
                          fillColor: Colors.white,
                          border: InputBorder.none),
                    ),
                  ),
                  if (!_stCheckBox)
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Repeat Password",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: _editingControllerRepeat,
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Theme.of(context).accentColor,
                                  size: 30.0,
                                ),
                                focusColor: Colors.pink[900],
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.centerLeft,
                    child: Checkbox(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: _stCheckBox,
                      tristate: false,
                      onChanged: (value) {
                        setState(() {
                          _stCheckBox = value;
                        });
                      },
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 45.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(25)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).accentColor,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    ));
  }
}
