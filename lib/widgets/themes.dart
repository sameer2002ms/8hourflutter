import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {

  static ThemeData lightTheme(BuildContext context) =>
      ThemeData(primarySwatch: Colors.amber,
          //to change the font for overall app do it from here
          fontFamily: GoogleFonts
              .rubik()
              .fontFamily,
          cardColor: Colors.white,
          canvasColor: lightcream,
          buttonColor: lightbluishcolor,
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
      ThemeData(
        brightness: Brightness.dark,
          fontFamily: GoogleFonts
              .rubik()
              .fontFamily,
          cardColor: Colors.black,
          canvasColor: darkcream,
          buttonColor: lightbluishcolor,
          appBarTheme: AppBarTheme(
              color: Colors.black,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.white),
              textTheme: Theme
                  .of(context)
                  .textTheme
          )

      );

  static Color lightcream = Color(0xfff5f5f5);
  static Color darkcream = Vx.gray900;
  static Color darkbluishcolor = Color(0xff403b58);
  static Color lightbluishcolor = Color(0xffe01159);

}