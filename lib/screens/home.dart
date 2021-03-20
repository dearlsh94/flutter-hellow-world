import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/first.dart';

class Home extends StatelessWidget {
  static const _title = 'Home Screen';
  static String routeName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, First.routeName);
            },
            child: Text('Go First'),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          )
        ],
      ),
    );
  }
}
