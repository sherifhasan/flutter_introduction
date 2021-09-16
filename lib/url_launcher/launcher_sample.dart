import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("url_launcher"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () => _makePhoneCall('tel:+201128518060'),
            child: const Text('Make phone call'),
          ),
          ElevatedButton(
            onPressed: () => _openWebsite('https://www.google.com'),
            child: const Text('open Google website'),
          ),
          ElevatedButton(
            onPressed: () => _openLocationOnGoogleMaps(30.0347359, 31.2135978),
            child: const Text('open Google maps'),
          ),
          ElevatedButton(
            onPressed: () => _sendEmail(
                email: 'sherif.hasan1994@gmail.com',
                subject: 'Email subject',
                body: 'This is send using flutter app'),
            child: const Text('Send an email'),
          ),
        ],
      )),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    if (await canLaunch("tel:$phoneNumber")) {
      await launch(phoneNumber);
    } else {
      _showMessage("Error making phone call");
    }
  }

  Future<void> _openWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      _showMessage("Error opening google website");
    }
  }

  Future<void> _openLocationOnGoogleMaps(
      double latitude, double longitude) async {
    final googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      _showMessage("Error opening google maps");
    }
  }

  Future<void> _sendEmail(
      {required String email,
      required String subject,
      required String body}) async {
    final url = Uri.encodeFull('mailto:$email?subject=$subject&body=$body');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      _showMessage("Error sending email");
    }
  }

  void _showMessage(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        fontSize: 14,
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIosWeb: 2,
        textColor: Colors.white,
        backgroundColor: Colors.red);
  }
}
