import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_futter_course/main.dart';
import 'package:full_futter_course/models/catalog.dart';
import 'package:full_futter_course/widgets/drawer.dart';
import 'package:full_futter_course/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "sameer";

  //here we have load the json file
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final CatalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    //here we will be decode the Json code
    final decodeData = jsonDecode(CatalogJson);
    var productdata = decodeData["products"];
    CatalogModel.items =
        List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text('8 Hour Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
