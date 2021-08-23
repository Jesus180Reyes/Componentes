import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:toast/toast.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listasNumeros = [];
  int _ultimoitem = 0;
  bool _isloading = false;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10();

        fetchdata();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListPage'),
        ),
        body: Stack(
          children: [
            _crearlistas(),
            _crearLoading(),
          ],
        ));
  }

  Widget _crearlistas() {
    return RefreshIndicator(
      onRefresh: obtenerpagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listasNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listasNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
              'https://picsum.photos/500/300/?image=$imagen',
            ),
          );
        },
      ),
    );
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoitem++;
      _listasNumeros.add(_ultimoitem);
      setState(() {});
    }
  }

  Future fetchdata() async {
    setState(() {
      _isloading = true;
    });
    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestahttp);
  }

  void respuestahttp() {
    _isloading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );

    _agregar10();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget _crearLoading() {
    if (_isloading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0),
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> obtenerpagina1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listasNumeros.clear();
      _ultimoitem++;
      _agregar10();
    });

    return Future.delayed(duration);
  }
}
