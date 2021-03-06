import 'package:flutter/material.dart';
import 'package:widgets_samples/api/favourits_list_screen.dart';
import 'package:widgets_samples/main.dart';

import 'models/item_model.dart';
import 'restful_api.dart';

class ApiSample extends StatefulWidget {
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavouriteListScreen()));
              },
              icon: Icon(Icons.favorite,
                  color:
                      favouriteBox.keys.isNotEmpty ? Colors.red : Colors.white))
        ],
      ),
      body: itemsList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.count(
              crossAxisCount: 2,
              children: itemsList
                  .map((item) => Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.network(
                                    item.image,
                                    height: 80,
                                  ),
                                  Text(
                                    item.title,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${item.price} L.E",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {
                                    if (favouriteBox.keys.contains(item.id)) {
                                      setState(() {
                                        favouriteBox.delete(item.id);
                                      });
                                    } else {
                                      setState(() {
                                        favouriteBox.put(item.id, item);
                                      });
                                    }
                                  },
                                  child: Icon(
                                    favouriteBox.keys.contains(item.id)
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: favouriteBox.keys.contains(item.id)
                                        ? Colors.red
                                        : Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ))
                  .toList(),
              padding: const EdgeInsets.all(16),
              scrollDirection: Axis.vertical,
            ),
    );
  }
}
