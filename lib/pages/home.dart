import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day=30;
    String name="codapour";
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body:Center(
        child: Container(
          child: Text(
            "$day days flutter by $name",
            style: TextStyle(
              fontSize:30,
            ),
          ),
        ),
      ),
    );
  }
}
