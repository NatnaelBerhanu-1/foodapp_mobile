import 'package:flutter/material.dart';
import 'pages/phone_input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primaryColor: Color.fromRGBO(12, 143, 100, 1.0),
          dialogBackgroundColor: Color(0xFFECECEC),
          primaryColorLight: Color.fromRGBO(12, 143, 100, 0.6),
          accentColor: Color.fromRGBO(238, 123, 23, 1.0),
          buttonColor: Color.fromRGBO(188, 188, 188, 1.0),
          backgroundColor: Colors.white,
          cursorColor: Color(0xFF171717),
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            subtitle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(23, 23, 23, 1.0)),
            body1: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
            caption: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Color(0xFF6B6B6B)),
            body2: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(188, 188, 188, 1.0)),
          )),
      darkTheme: ThemeData(
          backgroundColor: Color(0xFF222222),
          dialogBackgroundColor: Color(0xFF3A3A3A),
          primaryColor: Color.fromRGBO(12, 143, 100, 1.0),
          primaryColorLight: Color.fromRGBO(12, 143, 100, 0.6),
          accentColor: Color.fromRGBO(238, 123, 23, 1.0),
          buttonColor: Color.fromRGBO(188, 188, 188, 1.0),
          cursorColor: Color(0x99BCBCBC),
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            title: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
            subtitle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(12, 143, 100, 1.0)),
            body1: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            caption: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Color(0xFFB6B6B6)),
            body2: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(188, 188, 188, 1.0)),
          )),
      home: PhoneInput(),
    );
  }
}
