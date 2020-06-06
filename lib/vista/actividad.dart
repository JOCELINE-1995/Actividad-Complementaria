import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/elementoLista.dart';
import 'package:flutter/material.dart';

class Actividad extends StatelessWidget {

  static String routeName = "/actividad";

  const Actividad({Key key}): super(key: key);

  contruirLista(){
    return <bitacora>[
      bitacora(nombreAct:"actividad 1", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad 2", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad 3", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),
      bitacora(nombreAct:"actividad ", fecha:"2020-10-01"),

    ];

  }

  List<ListItem> bitacoraActividad(){

    return contruirLista()
        .map<ListItem>((actividad)=> ListItem(registro: actividad))
        .toList();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Actividades Sqlite"),
      ),
      body: ListView(

         children: bitacoraActividad(),

        ),
    );
  }
}