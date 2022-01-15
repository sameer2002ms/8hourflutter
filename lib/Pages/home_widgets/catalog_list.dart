import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_futter_course/Pages/home_detail_pages.dart';
import 'package:full_futter_course/models/catalog.dart';

import '../home_page.dart';
import 'catalog_items.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return

              //here we have route to the from one page to another
              //from home page to detail page
              InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeDetailPage(catalog: catalog))),
                  child: CatalogItem(catalog: catalog));
        });
  }
}
