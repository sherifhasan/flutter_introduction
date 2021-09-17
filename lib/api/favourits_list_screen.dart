import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:widgets_samples/api/category_list_screen.dart';
import 'package:widgets_samples/main.dart';

import 'models/item_model.dart';
import 'restful_api.dart';

class FavouriteListScreen extends StatefulWidget {
  @override
  _FavouriteListScreenState createState() => _FavouriteListScreenState();
}

class _FavouriteListScreenState extends State<FavouriteListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => ApiSample()));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: favouriteBox.values.isNotEmpty
          ? GridView.count(
              crossAxisCount: 2,
              children: favouriteBox.values
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
                                    setState(() {
                                      favouriteBox.delete(item.id);
                                    });
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
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.heart_slash, size: 64),
                  SizedBox(height: 20),
                  Text(
                    "You have no favourites yet",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
    );
  }
}
