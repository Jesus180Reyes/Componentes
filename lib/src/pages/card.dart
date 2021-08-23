import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card', style: TextStyle(color: Colors.black)),
        elevation: 5.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
          _cardItem(),
          SizedBox(height: 30.0),
          _cardtipo2(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}

Widget _cardItem() {
  return Card(
    elevation: 6.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: [
        ListTile(
          title: Text('Soy el titulo de esta Tarjeta'),
          subtitle: Text(
              'Aqui estamos con la descripcion que queremos que ver en el inicio de la pagina'),
          leading: Icon(
            Icons.photo_album,
            color: Colors.blue,
          ),
          onTap: () {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: Text('Cancelar')),
            TextButton(onPressed: () {}, child: Text('OK'))
          ],
        ),
      ],
    ),
  );
}

Widget _cardtipo2() {
  final card = Container(
    child: Column(
      children: [
        FadeInImage(
          height: 300.0,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 500),
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
            'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
          ),
        ),
        Container(
          child: Text('LandScape'),
          padding: EdgeInsets.all(10.0),
        ),
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        // color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0))
        ]),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );
}
