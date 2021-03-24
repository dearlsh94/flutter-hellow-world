import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/first.dart';
import 'package:hello_flutter/screens/todolist.dart';
import 'package:hello_flutter/screens/profile.dart';

class Home extends StatelessWidget {
  static const _title = 'Home Screen';
  static String routeName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              ButtonTheme(
                minWidth: 250.0,
                height: 100.0,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, First.routeName);
                  },
                  child: Text('Go First'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.green),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    side: MaterialStateProperty.all<BorderSide>(new BorderSide(
                      color: Color(0xFF000000),
                      width: 1.0,
                      style: BorderStyle.none))),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Todolist.routeName);
                },
                child: Text('Go Todolist'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  overlayColor: MaterialStateProperty.all<Color>(Colors.green),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  side: MaterialStateProperty.all<BorderSide>(new BorderSide(
                    color: Color(0xFF000000),
                    width: 1.0,
                    style: BorderStyle.none))),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Profile.routeName);
                },
                child: Text('Go Profile'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  overlayColor: MaterialStateProperty.all<Color>(Colors.green),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  side: MaterialStateProperty.all<BorderSide>(new BorderSide(
                    color: Color(0xFF000000),
                    width: 1.0,
                    style: BorderStyle.none))),
              )
            ],
          ),
        ]
      )
    );
  }
}
