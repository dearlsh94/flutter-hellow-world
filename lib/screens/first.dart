import 'package:flutter/material.dart';

class First extends StatelessWidget {

  static String routeName = '/first';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen')
      ),
      body: Text('hello')
    );
  }
}