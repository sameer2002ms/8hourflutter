import 'package:flutter/material.dart';
import 'package:full_futter_course/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .xl2
                .bold
                .make()
                .pOnly(left: 10, bottom: 5),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Myroutes.AddtocartButton),
              //here we have given the shape to button
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add to Cart".text.color(Colors.white).xl.make(),
            ).wh(130, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            //this is used to add animation
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),

            Expanded(
                child: VxArc(
              height: 30.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl3.bold.make().pOnly(
                          left: 10,
                        ),
                    catalog.disc.text.xl.make(),
                    10.heightBox,
                    "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."
                        .text
                        .xl
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
