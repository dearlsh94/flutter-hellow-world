import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const _title = 'Profile Screen';
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/bird.png'),
              ),
              SizedBox(height: 10.0),
              Text(
                'Ethan Lee',
                style: TextStyle(
                  fontFamily: 'Lobster Regular',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 5.0),
              Text(
                'Junior Front-end Engineer',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 30.0),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '010-1234-5678',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ],
                  )
                )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'dearlsh94@gmail.com',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ],
                  )
                )
              )
            ],
          )
        )
      )
    );
  }
}