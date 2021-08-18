import 'package:flutter/material.dart';

import 'widgets/icon.dart';
import 'widgets/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        ),
        body: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
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
              onPressed: () {},
            ),
            GridItemChild(
              title: 'TextField',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'Button',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'GestureDetector',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'Column',
              onPressed: () {},
            ),
            GridItemChild(
              title: 'Row',
              onPressed: () {},
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
