import 'package:flutter/material.dart';

import 'package:hello_flutter/screens/home.dart';
import 'package:hello_flutter/screens/first.dart';

void main() => runApp(HelloFlutter());

class HelloFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'first': (context) => First()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')), body: (Text('body'))
      )
    );
  }
}
