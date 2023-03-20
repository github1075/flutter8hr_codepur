import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login2.png", fit: BoxFit.cover,),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize:20,

              ),
            ),
            SizedBox(height:16,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:16,horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration:InputDecoration(
                      labelText: "username",
                      hintText: "enter your name"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "password",
                      hintText: "enter your password",

                    ),
                  ),
                  SizedBox(height:32,),
                  ElevatedButton(
                       style:TextButton.styleFrom(maximumSize: Size(170,50)),
                      onPressed:(){
                         Navigator.pushNamed(context,MyRoutes.homeRoute);

                      },
                      child:Text(
                        "submit",

                      )
                  )
                ],
              ),
            )
          ],

        ),
      ),
      
    );
  }
}
