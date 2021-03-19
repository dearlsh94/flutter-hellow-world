import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  static String routeName = '/';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen')
      ),
      body: Text('hello, flutter')
    );
  }
}