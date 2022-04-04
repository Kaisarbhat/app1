import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",fit: BoxFit.cover
            ),
              SizedBox(
                height: 40,
               
              ),
            Text(
              "Welcome",style: TextStyle(
                 color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
               Padding(
                 padding: const EdgeInsets.all(30.5),
                 child: Column(
                 children:[
                   TextFormField(
                     decoration:InputDecoration(
                       hintText: "Enter Username",
                       labelText: "Username",
                     )
                   ),
                   TextFormField(
                       obscureText : true,
                     decoration:InputDecoration(
                       hintText: "Enter password",
                       labelText: "Password",
                     )
                   ),

                 SizedBox(
                   height: 30,
                 ),

                 ElevatedButton(
                   child:Text("Login"),
                   style: TextButton.styleFrom() ,
                   onPressed:(){
                     print ("Waqt-e-iftaar");
                   } ,
                   ),
                 ],
                 ),
               )  
        ]),
    );
  }
}
