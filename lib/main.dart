import 'package:flutter/material.dart';
import 'package:hackathon02/login.dart';
import 'package:hackathon02/menu.dart';
import 'formulario.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false, //AQUI RETIRO A VERSÃO DEMO DO EMULADOR
      title: 'GO CNT', //AQUI ESCOLOLHO O TÍTULO
      theme: ThemeData(primaryColor: Colors.blueAccent ), //AQUI ESCOLHO A COR DE FUNDO
      home: //LoginPage(),
      LoginPage(),

    );

  }


}