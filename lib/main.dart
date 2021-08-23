// import 'package:componentes2/src/pages/home_page.dart';
// import 'package:componentes2/src/pages/input_page.dart';
// import 'package:componentes2/src/listview_page.dart';
import 'package:componentes2/src/pages/contador.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES'), // Spanish, no country code
      ],
      title: 'Material App',
      home: Contador(),

      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => HomePage2(),
      //   '': (BuildContext context) => AlertPage(),
      //   '': (BuildContext context) => AvatarPage(),
      // },
    );
  }
}
