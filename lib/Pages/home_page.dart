import 'package:flutter/material.dart';
import 'package:full_futter_course/main.dart';
import 'package:full_futter_course/widgets/drawer.dart';

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
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text('Welcome to $name days flutter'),
        ),
      ),
      //it is used to add navigator or footer
      drawer: MyDrawer(),
    );
  }
}
