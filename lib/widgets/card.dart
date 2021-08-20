import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Card",
              style: TextStyle(fontSize: 22),
            ),
          ),
          color: Colors.green[200],
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Colors.blue, width: 2)),
        ),
      ),
    );
  }
}
