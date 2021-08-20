import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/banner_image.jpg",
                width: 350, height: 200, fit: BoxFit.contain),
            Image.network(
                "https://www.letsnurture.com.au/wp-content/uploads/2019/06/flutter-banner.jpg",
                width: 350,
                height: 200,
                fit: BoxFit.contain),
          ],
        ),
      ),
    );
  }
}
