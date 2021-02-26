import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/icon.jpg'),
              ),
              Text(
                'Welcome to Ojo',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'YOUR HELPING HAND',
                style: TextStyle(
                  fontFamily: 'Bevan',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              // Card(
              //     margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              //     child: ListTile(
              //       leading: Icon(
              //         Icons.phone,
              //         color: Colors.teal,
              //       ),
              //       title: Text(
              //         'OCR   Code  Reader',
              //         style: TextStyle(
              //           color: Colors.teal.shade900,
              //           fontFamily: 'Bevan',
              //           fontSize: 20.0,
              //         ),
              //       ),
              //     )),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('Sample3.mp3');
                },
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'Object  Detector',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal.shade900,
                          fontFamily: 'Bevan'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
