import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  List<String> _poderes = ['Volar', 'Rayos X', 'SuperAliento', 'SuperFuerza'];

  TextEditingController _inputfieldDatecontroller = new TextEditingController();
  // String _opcionSeleccionada = 'Volar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text("letras ${_nombre.length}"),
        hintText: 'Nombre de la Persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre ',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        // print(_nombre);
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text("letras ${_email.length}"),
        hintText: ' EMAIL',
        labelText: 'Email',
        suffixIcon: Icon(Icons.email),
        icon: Icon(Icons.alternate_email),
      ),
      onChanged: (valor) {
        // print(_nombre);
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        // counter: Text("letras ${_nombre.length}"),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.remove_red_eye,
          ),
        ),
        icon: Icon(Icons.vpn_key_outlined),
      ),
      onChanged: (valor) {
        // print(_nombre);
        // setState(() {
        //   _email = valor;
        // });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email es: $_email'),
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputfieldDatecontroller,
      enableInteractiveSelection: false,
      // obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        // counter: Text("letras ${_nombre.length}"),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.calendar_today,
          ),
        ),
        icon: Icon(Icons.calendar_today_outlined),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: DateTime(2025),
        locale: Locale('es'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputfieldDatecontroller.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      children: [
        Icon(Icons.cabin_outlined),
        Expanded(
          child: DropdownButton(
            // value: [],
            items: getOpcionesDropdown(),
            onChanged: (opt) {},
          ),
        ),
      ],
    );
  }
}
