import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  static String routeName = "/calculadora";

  const Calculadora({Key key}): super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de área"),
      ),
      body: Container(
        child: Center(
          child: Text("Calculadora de áreas"),
        ),
      ),
      
    );
  }
}