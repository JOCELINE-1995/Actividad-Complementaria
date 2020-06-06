import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  static BuildContext contexto;

  const Home({Key key}): super(key: key);

  ListTile getListItem(Icon icono, String opcion,String route){
    return ListTile(
        leading: icono,
        title: Text(opcion),
        onTap: (){
          Navigator.pushNamed(contexto, route);
      },


);

  }


  ListView getMenu(BuildContext context){

    return ListView(
      children: <Widget>[
        DrawerHeader(child:Text("Bienvendio")),
        getListItem(Icon(Icons.developer_board),"Home","/"),
        getListItem(Icon(Icons.developer_board),"Actividades Sqlite","/calculadora"),
        getListItem(Icon(Icons.home),"Actividades Servicio Web","/actividad"),

      ],
      
    );
  }



  // This widget is the root of your application.
    @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Actividades'),
        backgroundColor: Colors.greenAccent,

      ),

      drawer:

      Drawer(
     
       
          child: new ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Virginia Luna Sanchez"),
                accountEmail: Text(""),

                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 60.0 ,child: Image.asset('images/a.jpg'),),
                  decoration: BoxDecoration(
                  color: Colors.blue,
                ),

              ),
           getMenu(context),
            ],
            
          )
          

      ),
      
    );
  }
}
