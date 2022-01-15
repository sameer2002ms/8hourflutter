import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 2),
            //here we have increase the size and made it bold
            "Catalog App".text.xl3.bold.color(context.theme.buttonColor).make(),
            "Trending Products".text.xl2.make(),

          ],
        ),

    );
  }
}