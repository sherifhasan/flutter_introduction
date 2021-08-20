import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  SingleChildScrollViewWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          reverse: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
                FlutterLogo(),
                Text(
                  'Hello this is Text widget inside Column',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.sentiment_very_satisfied),
              ],
            ),
          ),
        ));
  }
}
