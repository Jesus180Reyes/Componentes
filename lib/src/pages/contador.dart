import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Estos son los clicks que has presionado',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Text(
            conteo.toString(),
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
      floatingActionButton: _botones(),
    );
  }

  Widget _botones() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          tooltip: 'Presiona para Sumar',
          onPressed: () {
            _sumar();
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
        SizedBox(
          height: 5.0,
        ),
        FloatingActionButton(
          tooltip: 'Presiona para Restar',
          onPressed: () {
            _restar();
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          height: 5.0,
        ),
        FloatingActionButton(
          tooltip: 'Presiona para Bajar a Cero',
          onPressed: () {
            _zero();
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.exposure_zero),
        ),
      ],
    );
  }

  void _sumar() {
    setState(() {
      conteo++;
    });
  }

  void _restar() {
    setState(() {
      conteo--;
    });
  }

  void _zero() {
    conteo = 0;
    setState(() {});
  }
}
