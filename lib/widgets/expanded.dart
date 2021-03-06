import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  ExpandedWidget({required this.title});

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
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hello this is a Text widget which is inside the Expanded widget inside a row to handle over flow problems',
                      style: TextStyle(fontSize: 15, color: Colors.green),
                    ),
                  ),
                  Icon(Icons.done)
                ],
              ),
            ],
          ),
        ));
  }
}
