import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MiCardFlutter());

class MiCardFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/denis.jpg'),
              ),
              Text(
                'Denisvado Junior',
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 35, color: Colors.white),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.lightBlue.shade100,
                    fontSize: 15,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  height: 40,
                  width: 150,
                  child: Divider(
                    color: Colors.lightBlue.shade100,
                  )),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.lightBlue),
                  title: Text(
                    '+55 81 12345-6789',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: ListTile(
                  leading: Icon(Icons.mail, color: Colors.lightBlue),
                  title: Text(
                    'denisvaldo@email.com',
                    style: TextStyle(color: Colors.lightBlue),
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
