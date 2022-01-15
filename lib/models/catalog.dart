import 'package:flutter/material.dart';

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12",
        disc: "Latest Apple iPhone 12",
        price: "99999",
        color: "#33505a",
        image: "http://placehold.it/940x300/999/CCC")
  ];

  //get item by ID
   Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  //get item by position
  Item getByPosition(int pos) => items[pos];

}

class Item {
  final int id;
  final String name;
  final String disc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.disc,
      required this.price,
      required this.color,
      required this.image});

  //here we have load and decode the json data using map
  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      disc: map["disc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "disc": disc,
        "price": price,
        "color": color,
        "image": image,
      };
}
