import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
  Widget _lista(){
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
        children: _ListaItems(snapshot.data, context),
      );
      },
    );

  }

    List<Widget> _ListaItems(List<dynamic> data, BuildContext context){
      final List<Widget> opciones = [];
      data.forEach((opt){
        final widgetTemp = ListTile(
          title: Text( opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
          onTap: (){
            Navigator.pushNamed(context, opt['ruta']);
           // final route = MaterialPageRoute(
            //  builder: (context) => AlertPage()
            //);
           // Navigator.push(context, route);
          },
        );
        opciones..add(widgetTemp)
                ..add(Divider());
      });
      return opciones;
    }
}