import 'package:flutter/material.dart';
import 'package:full_futter_course/Pages/home_page.dart';
import 'package:full_futter_course/Pages/login_page.dart';
import 'package:full_futter_course/utils/routes.dart';
import 'package:full_futter_course/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),
      // it is used to change the theme of the app
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      //this is for the dark theme
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,

      //to move from one page to another we use Route
      // initialRoute: "/login",
      routes: {
          //this is the default route
          "/" : (context) => HomePage(),
        Myroutes.HomeRoute : (context) => HomePage(),
        Myroutes.loginRoute : (context) => LoginPage(),

      },

    );
  }
}
