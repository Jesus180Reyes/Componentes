import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _lista = ['1', '2', '3', '4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView(children: _mostrar_lista()),
    );
  }

  // ignore: non_constant_identifier_names
  List<Widget> _mostrar_lista() {
    return _lista.map((index) {
      return Column(
        children: [
          ListTile(
            title: Text(index),
            subtitle: Text('Componentes'),
            leading: Icon(Icons.ac_unit_outlined),
            trailing: Icon(Icons.arrow_forward_rounded),
            onTap: () {},
          )
        ],
      );
    }).toList();
  }
}
