import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  var d = 29;
  String s = "Ramadhan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ramadhan"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $d days of $s"),
        ),
      ),
          drawer: Drawer(),
    );
  }
}
