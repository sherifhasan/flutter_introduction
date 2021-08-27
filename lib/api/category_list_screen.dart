import 'package:flutter/material.dart';
import 'package:widgets_samples/models/item_model.dart';

import 'restful_api.dart';

class ApiSample extends StatefulWidget {
  const ApiSample({Key? key}) : super(key: key);

  @override
  _ApiSampleState createState() => _ApiSampleState();
}

class _ApiSampleState extends State<ApiSample> {
  var itemsList = <Item>[];

  @override
  void initState() {
    super.initState();
    getItems().then((value) {
      if (value != null) {
        setState(() {
          itemsList = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Sample'),
      ),
      body: itemsList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.count(crossAxisCount: 2,
              children: itemsList.map((item) =>
                Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(item.image,height: 80,),
                        Text(
                          item.title,
                          textAlign: TextAlign.center,maxLines: 2,
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),Text(
                          "${item.price} L.E",
                          textAlign: TextAlign.center,
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )).toList(),

              padding: const EdgeInsets.all(16),
              scrollDirection: Axis.vertical,
            ),
    );
  }
}
