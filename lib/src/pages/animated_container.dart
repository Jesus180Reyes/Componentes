import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainer2 extends StatefulWidget {
  const AnimatedContainer2({Key? key}) : super(key: key);

  @override
  _AnimatedContainerState createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<AnimatedContainer2> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.yellow;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(borderRadius: _borderRadius, color: _color)),
      ),
      floatingActionButton: _animate(),
    );
  }

  Widget _animate() {
    return FloatingActionButton(
      onPressed: () {
        _animar();
      },
      child: Icon(Icons.play_arrow),
      backgroundColor: Colors.blue,
    );
  }

  void _animar() {
    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(300).toDouble());
    });
  }
}
