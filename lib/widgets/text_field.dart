import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({required this.title});

  final String title;

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final emailTextFieldController = TextEditingController();

  final passwordTextFieldController = TextEditingController();

  final FocusNode passwordFocusNode = FocusNode();

  final FocusNode emailFocusNode = FocusNode();

  bool validateEmail = true, validatePassword = true;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((pref) {
      if (pref.containsKey("Email")) {
        emailTextFieldController.text = pref.get("Email").toString();
      }
      if (pref.containsKey("Password")) {
        passwordTextFieldController.text = pref.get("Password").toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                focusNode: emailFocusNode,
                controller: emailTextFieldController,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(passwordFocusNode),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                style: TextStyle(fontSize: 16.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: "Email",
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.blue[800]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    ),
                  ),
                  errorText: validateEmail ? null : "Email is wrong",
                  prefixIcon: Icon(Icons.email, color: Colors.blue[800]),
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                focusNode: passwordFocusNode,
                controller: passwordTextFieldController,
                onSubmitted: (value) async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  setState(() {
                    validateEmail =
                        emailTextFieldController.value.text.length > 10;
                    validatePassword =
                        passwordTextFieldController.value.text.length > 6;
                    prefs.setString(
                        "Email", emailTextFieldController.value.text);
                    prefs.setString(
                        "Password", passwordTextFieldController.value.text);
                  });
                },
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: 16.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  hintText: "Password",
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.blue[800]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    ),
                  ),
                  errorText: !validatePassword ? "password is wrong" : null,
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.blue[800]),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
