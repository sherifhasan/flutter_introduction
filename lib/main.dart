import 'package:flutter/material.dart';
import 'package:widgets_samples/widgets/button.dart';
import 'package:widgets_samples/widgets/column.dart';
import 'package:widgets_samples/widgets/gesture_detector.dart';
import 'package:widgets_samples/widgets/image.dart';
import 'package:widgets_samples/widgets/row.dart';
import 'package:widgets_samples/widgets/text_field.dart';

import 'widgets/icon.dart';
import 'widgets/text.dart';

void main() {
  //this fun is to start our app.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //every app should have a MaterialApp widget.
    return MaterialApp(
      //the title of the app.
      title: 'Flutter Demo',
      //this attr is to show or hide debug banner from  your app.
      debugShowCheckedModeBanner: false,
      //with this attr you can customize your app theme if u want.
      theme: ThemeData(
        // this attr is to customize the primary swatch of the app.
        primarySwatch: Colors.blue,
      ),
      //every material app should have a home widget which is the start of is app (eg. Splash screen).
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Session 2 flutter widgets'),
          centerTitle: true,
          elevation: 5,
          actions: [
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.clean_hands_rounded),
            )
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              side: BorderSide(color: Colors.orange, width: 3)),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          shrinkWrap: true,
          reverse: false,
          childAspectRatio: 1,
          padding: EdgeInsets.all(8),
          children: [
            GridItemChild(
              title: 'Icon',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IconWidget(title: 'Icon')));
              },
            ),
            GridItemChild(
              title: 'Text',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TextWidget(title: 'Text')));
              },
            ),
            GridItemChild(
              title: 'Image',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageWidget(title: 'Image')));
              },
            ),
            GridItemChild(
              title: 'TextField',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TextFieldWidget(title: 'TextField')));
              },
            ),
            GridItemChild(
              title: 'Button',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ButtonWidget(title: 'Button')));
              },
            ),
            GridItemChild(
              title: 'Gesture Detector',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            GestureDetectorWidget(title: 'Gesture Detector')));
              },
            ),
            GridItemChild(
              title: 'Column',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ColumnWidget(title: 'Column')));
              },
            ),
            GridItemChild(
              title: 'Row',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RowWidget(title: 'Row')));
              },
            ),
            GridItemChild(
              title: 'Expanded',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'ListView',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'SingleChildScrollView',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'GridView',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'Card',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'Container',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'SizedBox',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'Center',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'SizedBox',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'Padding',
              onPressed: () {},
            ),
          ],
        ));
  }
}

class GridItemChild extends StatelessWidget {
  const GridItemChild({required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
/*


14- ListView 15m
15- SinglChildScrollView 5m
16- GridView 15m
17- Card 5m
18- Container 5m
19- Center 2m
20- SizedBox 2m
21- Padding 2m
 */
