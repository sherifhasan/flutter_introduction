import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  IconWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Icon(Icons.location_pin, color: Colors.blue,size: 48, ),
      ),
    );
  }
}
