import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name=" ";
  bool clickSubmit=false;
  final _formkey=GlobalKey<FormState>();
  moveToHome(BuildContext context)async{
    if(_formkey.currentState!.validate()){
      setState(() {
        clickSubmit=true;

      });
      await Future.delayed(Duration(seconds:2));
      Navigator.pushNamed(context,MyRoutes.homeRoute);
      setState(() {
        clickSubmit=false;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key:_formkey ,
          child: Column(
            children: [
              Image.asset("assets/images/login2.png", fit: BoxFit.cover,),
              Text(
                "Welcome $name ",
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
                      onChanged: (value){
                        name=value;
                        setState(() {

                        });
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return "username can't be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "password",
                        hintText: "enter your password",

                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "pasword can't be empty";
                        }
                        else if(value.length<6){
                          return "password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height:32,),
                    // ElevatedButton(
                    //      style:TextButton.styleFrom(maximumSize: Size(170,50)),
                    //     onPressed:(){
                    //        Navigator.pushNamed(context,MyRoutes.homeRoute);
                    //
                    //     },
                    //     child:Text(
                    //       "submit",
                    //
                    //     )
                    // )
                    Material(
                      color:Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        splashColor: Colors.orange,
                        onTap: ()=>moveToHome(context),

                        child: AnimatedContainer(
                          duration:Duration(seconds:1),
                          height:50,
                          width:clickSubmit?90:120,
                          alignment:Alignment.center,
                          child:clickSubmit?
                              Icon(Icons.done,color: Colors.white,)
                              : Text(
                            "submit",
                            style:TextStyle(
                              fontSize:25,
                              color:Colors.white
                            ),
                          ),
                          // decoration: BoxDecoration(
                          //   color: Colors.green,
                          //   borderRadius: BorderRadius.circular(8),
                          //
                          // ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],

          ),
        ),
      ),

    );
  }
}
