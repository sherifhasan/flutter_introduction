import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({required this.title});

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
            // this button type was has elevation from the screen which make some shadow around it.
            ElevatedButton(
              // this attr change the button style like borders, its radius, background color & padding.
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30))),
                /*
                here add the child u want to be in the button.
                if u have more than on child u can make the child widget is row and inside the row children put what u want.
                */
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
                // on pressed fun which u can add what u want the button do when it was pressed.
                onPressed: () {
                  print("Sign up button has been pressed ;)");
                }),
            // this button type was has no elevation from the screen (Flat button).
            TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30))),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  print("Sign in button has been pressed ;)");
                }),
            // this button we can use for search icon and so on.
            IconButton(
              onPressed: () {
                print("Icon button has been pressed ;)");
              },
              // the icon attr can take any widget not icons only but the behaviour will be ugly a little bit.
              icon: Icon(Icons.send),
            )
          ],
        ),
      ),
    );
  }
}
