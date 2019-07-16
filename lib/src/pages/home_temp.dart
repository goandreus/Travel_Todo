import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = [ 'uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
       // children: _crearItems()
       children: _crearItemsCorta()
        ),
      );
  }


  List<Widget> _crearItems(){


    List<Widget> lista = List<Widget>();

    for (String opt in opciones){
      final tempWidget = ListTile(
        title: Text( opt ),
      );
      lista..add(tempWidget)      //operador en cascada
          ..add(Divider());
    }
  return lista;
}
List<Widget> _crearItemsCorta(){
  var widgets = opciones.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!'),
            subtitle: Text('Hola como esta'),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.arrow_downward),
            onTap: (){},
          ),
          Divider()
        ],
      );

  }).toList();
  return widgets;
}

}