import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

ScrollController _scrollController = ScrollController();

  List<int> _ListaNumeros = List();
  int _ultimoItem = 0;

  @override
  void initState() {
    super.initState();

    _agregar10();

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _agregar10();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista(){
    return ListView.builder(
      controller: _scrollController,
      itemCount: _ListaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        
        final imagen = _ListaNumeros[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          placeholder: AssetImage('assets/plane_loading.gif'),
        );
      },
    );
  }

  void _agregar10(){
    for (var i=1; i<10; i ++){
      _ultimoItem++;
      _ListaNumeros.add(_ultimoItem);
    }
    setState(() {
      
    });
  }
}