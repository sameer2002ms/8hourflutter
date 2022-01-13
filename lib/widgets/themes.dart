import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {

  static ThemeData lightTheme(BuildContext context) =>
      ThemeData(primarySwatch: Colors.amber,
          //to change the font for overall app do it from here
          fontFamily: GoogleFonts
              .rubik()
              .fontFamily,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: Theme
                  .of(context)
                  .textTheme
          )
      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark,

      );
}