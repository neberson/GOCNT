import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FomularioPage extends StatefulWidget {
  @override
  _FomularioPageState createState() => _FomularioPageState();
}

class _FomularioPageState extends State<FomularioPage> {
  bool checkedValueOtimo = false;
  bool checkedValueBom = false;
  bool checkedValueRegular = false;
  bool checkedValueRuim = false;
  bool checkedValuePessimo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Fomulário", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff243861),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12, top: 12, right: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Formulário: 2020001123",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Folha: 001",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. Pavimento:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    backgroundColor: Colors.black,
                    color: Colors.white),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Critério 1:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 3,
              ),
              _checkBoxSelected(),
              Text(
                "Critério 2:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 3,
              ),
              _checkBoxSelected(),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                child: TextField(
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xff243861)),
                      labelText: 'Informações adicionais',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff243861), width: 0.0),

                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff243861), width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(

                    width: (MediaQuery.of(context).size.width/2)-(MediaQuery.of(context).size.width/10),
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text("Cancelar", style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                    ),
                  ),
                  Container(

                    width: (MediaQuery.of(context).size.width/2)-(MediaQuery.of(context).size.width/10),
                    child: RaisedButton(
                      color: Color(0xff243861),
                      child: Text("Salvar", style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _checkBoxSelected() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text("Ótimo"),
            Checkbox(
              value: checkedValueOtimo,
              onChanged: (value) {
                setState(() {
                  checkedValueOtimo = value;
                  checkedValuePessimo = false;
                  checkedValueBom = false;
                  checkedValueRegular = false;
                  checkedValueRuim = false;
                });
              },
            )
          ],
        ),
        Column(
          children: [
            Text("Bom"),
            Checkbox(
                value: checkedValueBom,
                onChanged: (value) {
                  setState(() {
                    checkedValueBom = value;
                    checkedValuePessimo = false;
                    checkedValueOtimo = false;
                    checkedValueRegular = false;
                    checkedValueRuim = false;
                  });
                })
          ],
        ),
        Column(
          children: [
            Text("Regular"),
            Checkbox(
                value: checkedValueRegular,
                onChanged: (value) {
                  setState(() {
                    checkedValueRegular = value;
                    checkedValuePessimo = false;
                    checkedValueOtimo = false;
                    checkedValueBom = false;
                    checkedValueRuim = false;
                  });
                })
          ],
        ),
        Column(
          children: [
            Text("Ruim"),
            Checkbox(
                value: checkedValueRuim,
                onChanged: (value) {
                  setState(() {
                    checkedValueRuim = value;
                    checkedValuePessimo = false;
                    checkedValueOtimo = false;
                    checkedValueBom = false;
                    checkedValueRegular = false;
                  });
                })
          ],
        ),
        Column(
          children: [
            Text("Péssimo"),
            Checkbox(
                value: checkedValuePessimo,
                onChanged: (value) {
                  setState(() {
                    checkedValuePessimo = value;
                    checkedValueOtimo = false;
                    checkedValueBom = false;
                    checkedValueRegular = false;
                    checkedValueRuim = false;
                  });
                })
          ],
        ),
      ],
    );
  }
}
