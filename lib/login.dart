import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon02/menu.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            padding: EdgeInsets.only(
              top: 45,
              left: 40,
              right: 40,

            ),
            color: Color(0xff243861),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset("assets/images/logo.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //AQUI ESTOU FAZENDO OS CAMPOS DE FORMULÁRIO DE LOGIN
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Matrícula",
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  obscureText: true, //PARA OCULTAR A SENHA
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 5,
                ),
                ButtonTheme(
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () => {

                        Navigator.push (
                          context,
                          MaterialPageRoute(builder: (context) =>MenuPage()),
                        )
                      },
                      child: Text(
                        "Acessar",
                        style:
                        TextStyle(color: Color(0xff243861), fontSize: 20),
                      ),
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 40,
                ),

                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Text("Recuperar Senha",
                        style:
                        TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: () {}, ///esse botão não está fazendo nada
                  ),
                )
              ],
            )));
  }
}
