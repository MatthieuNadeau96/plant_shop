import 'package:flutter/material.dart';
import 'package:plant_shop/screens/home_screen.dart';
import 'package:plant_shop/screens/store_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color(0xffF5F8FF),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xff364864),
          ),
        ),
      ),
      home: StoreScreen(),
    );
  }
}
