import 'package:flutter/material.dart';
import 'package:plant_shop/main.dart';
import 'package:plant_shop/widgets/my_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Home',
      ),
    );
  }
}
