import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlide = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            SizedBox(
              height: 20.0,
            ),
            Divider(),
            _crearCheckbox(),
            Divider(),
            _crearImagen(),
            Divider(),
            _crearSwitch(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.green,
      label: 'Tamano de la label',
      // divisions: 20,
      value: _valorSlide,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              // print(valor);
              setState(() {
                _valorSlide = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.wikia.nocookie.net/naruto/images/a/a2/Naruto_Uzumaki_Parte_II_Anime.png/revision/latest?cb=20161013194453&path-prefix=es'),
      width: _valorSlide,
      fit: BoxFit.cover,
    );
  }

  Widget _crearCheckbox() {
    //   return Checkbox(
    //     // activeColor: Colors.red,
    //     value: _bloquearCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloquearCheck = valor!;
    //       });
    //     },
    //   );
    // }
    return CheckboxListTile(
      title: Text('bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor!;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}
