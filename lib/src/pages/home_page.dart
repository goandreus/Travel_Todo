import 'package:componentes/src/providers/menu_provider.dart';
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

    print( menuProvider.opciones );

    return ListView(
      children: _ListaItems(),
    );

  }

    List<Widget> _ListaItems(){
      return[
        ListTile(title: Text('Hola mundo'),),
        Divider(),
        ListTile(title: Text('Hola mundo'),),
        Divider(),
        ListTile(title: Text('Hola mundo'),),
        Divider(),

      ] ; 
    }
}