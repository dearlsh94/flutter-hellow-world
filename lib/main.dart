import 'package:flutter/material.dart';

import 'package:hello_flutter/screens/home.dart';
import 'package:hello_flutter/screens/first.dart';
import 'package:hello_flutter/screens/todolist.dart';

void main() => runApp(HelloFlutter());

class HelloFlutter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      routes: {
        Home.routeName: (context) => Home(),
        First.routeName: (context) => First(),
        Todolist.routeName: (context) => Todolist()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home()
    );
  }
}
