import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Expanded(
              child: _crearImagen()
            ),

          ],
        ),
      ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tu imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( valor ){

        setState(() {
           _valorSlider = valor;
        });
       
      },
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://scontent.flim16-3.fna.fbcdn.net/v/t1.0-9/67294457_2296673993719000_6679508060425158656_n.jpg?_nc_cat=104&_nc_oc=AQliepHAYUNdqJ7_wZGcE3gZT5rOvO3Zsue1fXD6r_43IkKwGSeofxseLtFybG8gNdA&_nc_ht=scontent.flim16-3.fna&oh=8c7d37b0307a82858731b9c61e1503d8&oe=5DCD4843'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}