import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_futter_course/Pages/cart_page.dart';
import 'package:full_futter_course/utils/routes.dart';
import 'package:full_futter_course/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:full_futter_course/models/catalog.dart';

import 'home_widgets/catalog_header.dart';
import 'home_widgets/catalog_list.dart';

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
        await rootBundle.loadString('assets/files/catalog.json');
    //here we will be decode the Json code
    final decodeData = jsonDecode(CatalogJson);

    // var productdata = decodeData["products"];
    CatalogModel.items =
        List.from(decodeData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Myroutes.CartRoute),
        backgroundColor: context.theme.buttonColor,
        child: Icon(CupertinoIcons.cart,
        color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
