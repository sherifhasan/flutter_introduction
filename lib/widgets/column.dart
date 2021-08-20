import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  ColumnWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(),
              Text(
                'Hello this is Text widget inside Column',
                style: TextStyle(fontSize: 15),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ));
  }
}
