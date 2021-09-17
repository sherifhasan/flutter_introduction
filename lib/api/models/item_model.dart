import 'dart:convert';

import 'package:hive/hive.dart';

part 'item_model.g.dart';

@HiveType(typeId: 1)
class Item {
  Item({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String title;
  @HiveField(2)
  double price;
  @HiveField(3)
  String description;
  @HiveField(4)
  String image;

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "image": image,
      };
}
