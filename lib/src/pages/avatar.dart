import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAAxIkQ0f6X553rlhuU3Q4BE3gaOGwFG3ejA&usqp=CAU'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.pink,
              radius: 20.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAAxIkQ0f6X553rlhuU3Q4BE3gaOGwFG3ejA&usqp=CAU',
          ),
          fit: BoxFit.cover,
          width: 900.0,
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: _boton(),
    );
  }

  //FloatingActionButton HERE!!
  Widget _boton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.ac_unit_sharp),
          backgroundColor: Colors.blue,
        ),
        SizedBox(
          width: 4.0,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.access_alarm_outlined),
          backgroundColor: Colors.blue,
        ),
        SizedBox(
          width: 4.0,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.access_alarms_outlined),
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
