import 'package:demo/pages/home.dart';
import 'package:demo/pages/login.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.green),
      //darkTheme: ThemeData(brightness: Brightness.light,primarySwatch: Colors.orange),
     // home: HomePage(),
      initialRoute:"/home",
      routes:{
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
      }
      ,
    );
  }
}
