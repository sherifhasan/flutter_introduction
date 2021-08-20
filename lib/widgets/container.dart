import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  ContainerWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.green[300],
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blue, width: 2)),
          child: Text(
            "Container",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
