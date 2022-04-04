import 'dart:ui';

import 'package:app1/utilis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatefulWidget {
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  String s = "";
  bool changeButton = false;

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/login.png", fit: BoxFit.cover),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $s",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.5),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    s = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    )),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap:  () async {
                    setState(()  {
                      changeButton = true;
                    });
                     await  Future.delayed(Duration(seconds: 1));
                     Navigator.pushNamed(context, Myroutes.homeRoute);
                  },
                  child: AnimatedContainer(
                          height: 50,
                      width: changeButton ? 70 :  150,
                      // color: Colors.cyan,
                      duration: Duration(seconds: 1),
                
                     alignment: Alignment.center,
                     
                     
                      child: changeButton
                      ? Icon(
                    Icons.done,  
                    color: Colors.white,  
                      )
                      :Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(changeButton ?16 :  8))),
                ),

                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                //   onPressed: () {

                //   },
                // ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
