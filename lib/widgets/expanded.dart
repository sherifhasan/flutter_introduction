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
                  Text(
                    'Hello this is regular Text widget which need to be handled to not make overflow problem.',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  Icon(Icons.done)
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
