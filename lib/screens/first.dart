import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/home.dart';

class First extends StatelessWidget {
  static const _title = 'First Screen';
  static String routeName = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, Home.routeName);
            },
            child: Text('Go Home'),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0)),
          ),
          Text('hi')
        ],
      ),
    );
  }
}