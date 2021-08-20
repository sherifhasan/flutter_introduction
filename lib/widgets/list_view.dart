import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({required this.title});

  final String title;
  final widgetList = [
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
    'Hello this is Text widget inside ListView',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          shrinkWrap: true,
          reverse: false,
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          children: widgetList.map((text) {
            return Row(
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 15),
                ),
                FlutterLogo()
              ],
            );
          }).toList(),
        ));
  }
}
