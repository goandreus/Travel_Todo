import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{
  List<dynamic> opciones = [];

  _MenuProvider(){
    
  }

   Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json').then((data){
      Map dataMap = json.decode(data);
      print(dataMap['rutas']);
      opciones = dataMap [''];

      return opciones;
    });
  }
}

final menuProvider = _MenuProvider();