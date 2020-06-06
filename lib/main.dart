import 'package:drawer_app/vista/actividad.dart';
import 'package:drawer_app/vista/calculadora.dart';
import 'package:drawer_app/vista/home.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Victoria',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home:Home() ,
      routes: <String, WidgetBuilder>{
        Calculadora.routeName: (BuildContext context) => Calculadora(),
        Actividad.routeName: (BuildContext context) => Actividad(),
       
      }

    );
  }
}
