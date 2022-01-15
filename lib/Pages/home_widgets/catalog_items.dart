import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_futter_course/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            //this is used to add animation
            Hero(
              tag: Key(catalog.id.toString()),

                child: CatalogImage(image: catalog.image,)),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.bold.make().pOnly(left: 10,),
                    catalog.disc.text.make().pOnly(left: 10,),
                    10.heightBox,
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        "\$${catalog.price}".text.bold.make().pOnly(left: 10, bottom: 5),
                        ElevatedButton(onPressed: (){},
                          //here we have given the shape to button
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                              shape: MaterialStateProperty.all(StadiumBorder())
                          ),
                          child: "Add to Cart".text.color(Colors.white).make(),)
                      ],
                    ).pOnly(right: 10.0)

                  ],
                ))

          ],
        )).color(context.cardColor).rounded.square(120).make().py4();
  }
}