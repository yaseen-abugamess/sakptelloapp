import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('المدينه'),
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
