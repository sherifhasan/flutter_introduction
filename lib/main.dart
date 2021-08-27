import 'package:flutter/material.dart';
import 'package:widgets_samples/api/category.dart';
import 'package:widgets_samples/widgets/button.dart';
import 'package:widgets_samples/widgets/card.dart';
import 'package:widgets_samples/widgets/column.dart';
import 'package:widgets_samples/widgets/container.dart';
import 'package:widgets_samples/widgets/expanded.dart';
import 'package:widgets_samples/widgets/gesture_detector.dart';
import 'package:widgets_samples/widgets/image.dart';
import 'package:widgets_samples/widgets/list_view.dart';
import 'package:widgets_samples/widgets/row.dart';
import 'package:widgets_samples/widgets/single_child_scroll_view.dart';
import 'package:widgets_samples/widgets/text_field.dart';

import 'widgets/icon.dart';
import 'widgets/text.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initializeApp();
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
          // this attr make our appbar title centered.
          centerTitle: true,
          // this attr change the elevation level.
          elevation: 5,
          // here you can add some widgets to the action of the appbar like search iconButton etc.
          actions: [
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.clean_hands_rounded),
            )
          ],
          // this attr can change the shape of the appBar and add border to it.
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              side: BorderSide(color: Colors.orange, width: 3)),
        ),
        body: GridView.count(
          // this attr specify the count of widgets you want to show in a row in the vertical scroll direction & in a column in the horizontal direction.
          crossAxisCount: 3,
          // this attr change the vertical margin between children if scroll direction is vertical & horizontal margin if it was horizontal.
          mainAxisSpacing: 5,
          // this attr change the horizontal margin between children if scroll direction is vertical & vertical margin if it was horizontal.
          crossAxisSpacing: 5,
          // this attr make the space of gridview limit to the only required space which is useFull to handle spaces in the view in some cases.
          shrinkWrap: true,
          // this attr reverse children order like (if we have this list [1, 2, 3], it will be shown as [3, 2, 1]).
          reverse: false,
          // this attr change the child size aspect ratio, decrease it under 1 like 0.8 to make child more taller thane it's regular size.
          childAspectRatio: 1,
          // here we can add padding to the whole children.
          padding: EdgeInsets.all(8),
          children: [
            // this widget is a simple widget we had created below to use gridview but u can use any another widget u want.
            GridItemChild(
              // this is the title of our customized widget because this widget we had put in it only text child.
              title: 'Icon',
              // this is the onPressed fun which we can put in it what we want this child do when user press on it.
              onPressed: () {
                /*
                this line show u how to navigate from screen to another one.
                the navigator is the controller which responsible on adding and removing the widgets to the app widget tree.
                */
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ExpandedWidget(title: 'Expanded')));
              },
            ),
            GridItemChild(
              title: 'ListView',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListViewWidget(title: 'ListView')));
              },
            ),
            GridItemChild(
              title: 'Single Child Scroll View',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SingleChildScrollViewWidget(
                            title: 'SingleChildScrollView')));
              },
            ),
            GridItemChild(
              title: 'Container',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ContainerWidget(title: 'Container')));
              },
            ),
            GridItemChild(
              title: 'Card',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CardWidget(title: 'Card')));
              },
            ),
            GridItemChild(
              title: 'Firebase DB Sample',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CardWidget(title: 'Firebase DB')));
              },
            ),
            GridItemChild(
              title: 'Api sample',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ApiSample()));
              },
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
