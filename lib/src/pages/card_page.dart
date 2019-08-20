import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('lorem lorem lorem'),
            subtitle: Text("lorem lorem lorem lorem lorem lorem"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
            FlatButton(child: Text('Cancelar'),
            onPressed: (){},
            ),
            FlatButton(child: Text('ok'),
            onPressed: (){},
            ),
          ],)
        ],
      ),
    );
  }

  Widget _cardTipo2(){
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(image: NetworkImage('https://www.peru.travel/Portals/_default/que-hacer/naturaleza/laguna-llanganuco/3.jpg'),
          placeholder: AssetImage('assets/plane_loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,

          ),
          
          Container(padding: EdgeInsets.all(10.0),
            child: Text('lorem lorem lorem'),
          )
        ],
      ),
    );
  }
}
