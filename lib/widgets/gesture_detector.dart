import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatelessWidget {
  GestureDetectorWidget({required this.title});

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
          children: [
            GestureDetector(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
                onTap: () {
                  print("onTap has been Pressed ;)");
                },
                onDoubleTap: () {
                  print("onDoubleTap has been Pressed ;)");
                }),
          ],
        ),
      ),
    );
  }
}
