import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  final _lista = ['1', '2', '3', '5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sexo'),
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: ListView(children: listatabla(context)),
    );
  }

  List<Widget> listatabla(BuildContext context) {
    return _lista.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text('esta es la lista'),
            onTap: () {},
            //   final route =
            //       MaterialPageRoute(builder: (context) => AlertPage());
            // },
            // leading: Icon(Icons.ac_unit_sharp),
            trailing: Icon(Icons.arrow_back_ios),
          ),
        ],
      );
    }).toList();
  }
}
