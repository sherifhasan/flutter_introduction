import 'package:flutter/material.dart';

import 'restful_api.dart';

class ApiSample extends StatefulWidget {
  const ApiSample({Key? key}) : super(key: key);

  @override
  _ApiSampleState createState() => _ApiSampleState();
}

class _ApiSampleState extends State<ApiSample> {
  var categoriesList = <String>[];

  @override
  void initState() {
    super.initState();
    getCategories().then((value) {
      if (value != null) {
        setState(() {
          categoriesList = value;
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
      body: categoriesList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (BuildContext context, int i) {
                return Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      categoriesList[i],
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
              itemCount: categoriesList.length,
              padding: const EdgeInsets.all(16),
              scrollDirection: Axis.vertical,
            ),
    );
  }
}
