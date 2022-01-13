import 'package:flutter/material.dart';
import 'package:full_futter_course/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: (){},
        leading: CircleAvatar(backgroundImage: NetworkImage(item.image),
       ),
        title: Text(item.name),
        subtitle: Text(item.disc),
        trailing: Text("\$${item.price}",
       textScaleFactor: 1.1,
       style: TextStyle(

         color: Colors.red,
         fontWeight: FontWeight.bold
       ),
        ),
      ),
    );
  }
}
