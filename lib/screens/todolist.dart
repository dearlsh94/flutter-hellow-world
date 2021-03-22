import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/home.dart';

abstract class TodoItem{
  bool isChecked = false;
  String _title = '';
  String _content = '';

  TodoItem(title, content) {
    _title = title;
    _content = content;
  }

  String getTitle() {
    return _title;
  }

  String getContent() {
    return _content;
  }
}

class Todolist extends StatefulWidget {
  static String routeName = '/todolist';

  @override
  createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {

  static const _title = 'Todolist Screen';
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String content = '';

  List<TodoItem> _myList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue),
        child: Form(
          key: _formKey,
          child: Scrollbar (
            child: Align(
              alignment: Alignment.topCenter,
              child: Card(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 400),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...[
                          TextFormField(
                            decoration: InputDecoration(
                              filled: false,
                              hintText: 'Enter a title',
                              labelText: 'Title'
                            ),
                            onChanged: (value) {
                              setState(() {
                                title = value;
                              });
                            },
                            style: TextStyle(
                              color: Colors.blue
                            ),
                          ),
                          SizedBox(height: 30.0),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.lightGreen,
                              hintText: 'Enter a content',
                              labelText: 'Content',
                            ),
                            onChanged: (value) {
                              setState(() {
                                content = value;
                              });
                            },
                          ),
                          SizedBox(height: 30.0),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    print('run clear');
                                    title = "";
                                    content = "";
                                  });
                                },
                                child: Text('Clear'),
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  overlayColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                  side: MaterialStateProperty.all<BorderSide>(new BorderSide(
                                    color: Color(0xFF000000),
                                    width: 1.0,
                                    style: BorderStyle.none))),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  print('run Save');
                                },
                                child: Text('Save'),
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  overlayColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                  side: MaterialStateProperty.all<BorderSide>(new BorderSide(
                                    color: Color(0xFF000000),
                                    width: 1.0,
                                    style: BorderStyle.none))),
                              ),
                            ],
                          )
                        ]
                      ]
                    )
                  )
                )
              )
            )
          )
        )
      )
    );
  }
}