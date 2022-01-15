import 'package:flutter/material.dart';
import 'package:full_futter_course/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Vx.coolGray100,
      bottomNavigationBar:
          Container(
            color: Colors.white,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.xl2.bold.make().pOnly(left: 10, bottom: 5),
                ElevatedButton(onPressed: (){},
                  //here we have given the shape to button
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(StadiumBorder())
                  ),
                  child: "Buy".text.xl.make(),).wh(100, 50)
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
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl3.bold.make().pOnly(
                          left: 10,
                        ),
                    catalog.disc.text.xl.make().pOnly(
                          left: 10,
                        ),
                    10.heightBox,
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
