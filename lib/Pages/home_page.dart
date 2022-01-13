import 'package:flutter/material.dart';
import 'package:full_futter_course/main.dart';
import 'package:full_futter_course/models/catalog.dart';
import 'package:full_futter_course/widgets/drawer.dart';
import 'package:full_futter_course/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "sameer";

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text('8 Hour Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //here we have shown the list of items from the calatog.dart
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            }),
      ),
      //it is used to add navigator or footer
      drawer: MyDrawer(),
    );
  }
}
