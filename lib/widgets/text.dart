import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Example',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
