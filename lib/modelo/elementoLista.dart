import 'package:drawer_app/modelo/bitacora.dart';
import 'package:flutter/material.dart';


class ListItem extends StatefulWidget{
  final bitacora registro;

  ListItem({Key key,this.registro}) : super(key: key);

@override
_ListItemState createState() => _ListItemState(registro);

}

class _ListItemState extends State<ListItem> {

  final bitacora registro;

  _ListItemState(this.registro);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: CircleAvatar(child: Text(registro.nombreAct.substring(0, 1)),),
          title: Text(registro.nombreAct),
          subtitle: Text("Fecha: " + registro.fecha),
          onTap: (){
            setState(() {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()),);

            });


          },
        ),
      );
  }

}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Actividades descripción"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('siguiente'),
        ),
      ),
    );
  }
}