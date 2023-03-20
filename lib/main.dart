import 'package:demo/pages/home.dart';
import 'package:demo/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.lateefTextTheme(),
      ),
      //darkTheme: ThemeData(brightness: Brightness.light,primarySwatch: Colors.orange),
     // home: HomePage(),
      //initialRoute:"/home",
      routes:{
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
      }
      ,
    );
  }
}
