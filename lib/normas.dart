import 'package:flutter/material.dart';
import 'package:hackathon02/login.dart';

class NormasPage extends StatefulWidget {
  @override
  _NormasPageState createState() => _NormasPageState();
}

class _NormasPageState extends State<NormasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Normas",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff243861),
        ),
        backgroundColor: Colors.white,

        //AQUI TEM UM CORPO

        body: Container (
    child: ListView(
    children: <Widget>[

      NormaButton(),
      ]
        )

        ),
);
  }
}

class NormaButton extends StatefulWidget {
  @override
  _NormaButtonState createState() => _NormaButtonState();
}

class _NormaButtonState extends State<NormaButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      margin: EdgeInsets.only(
        top: 15.0),
          width: 250,
        height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
           height: 50,
          child: RaisedButton(
              color: Color(0xff243861),
              child: Text (
                "Norma DNIT n.º 005/2003 - TER",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,


                ),
              ),
              elevation: 6.0,
              onPressed: () => bookFlight(context)
          ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: RaisedButton(
                color: Color(0xff243861),
                child: Text (
                  "Norma DNIT n.º 005/2003 - TER",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,


                  ),
                ),
                elevation: 6.0,
                onPressed: () => bookFlight(context)
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: RaisedButton(
                color: Color(0xff243861),
                child: Text (
                  "Norma DNIT n.º 005/2003 - TER",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,


                  ),
                ),
                elevation: 6.0,
                onPressed: () => bookFlight(context)
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: RaisedButton(
                color: Color(0xff243861),
                child: Text (
                  "Norma DNIT n.º 005/2003 - TER",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,


                  ),
                ),
                elevation: 6.0,
                onPressed: () => bookFlight(context)
            ),
          ),
        ],
      )

    );

  }
}

void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Norma DNIT n.º 005/2003 - TER"),
    content: Text("Define os termos empregados em defeitos que ocorrem nos pavimentos flexíveis e semirrígidos"),
  );
  showDialog (
    context: context,
    builder: (BuildContext contex) => alertDialog


  );
}



//Norma DNIT n.º 005/2003 - TER, que define os termos empregados em defeitos que ocorrem nos pavimentos flexíveis e semirrígidos;
//Norma DNIT n.º 006/2003 - PRO, que estabelece condições exigíveis para a avaliação objetiva da superfície de pavimentos rodoviários flexíveis e semirrígidos;
//Norma DNIT n.º 008/2003 - PRO, que institui procedimentos para o levantamento visual contínuo, exigíveis na avaliação da superfície de pavimentos flexíveis e semirrígidos; e
//Norma DNIT n.º 009/2003 - PRO, que fixa procedimentos para a avaliação subjetiva da superfície de pavimentos flexíveis e semirrígidos com base no seu valor de serventia atual, indicando o grau de conforto e suavidade ao rolamento proporcionado pelo pavimento ao usuário