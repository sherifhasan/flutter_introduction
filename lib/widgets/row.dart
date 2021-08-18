import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  RowWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(),
              Text(
                'Hello this is Text widget inside Row',
                style: TextStyle(fontSize: 15),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ));
  }
}
