import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon02/Model/CategoriaMenu.dart';
import 'package:hackathon02/login.dart';
import 'package:hackathon02/main.dart';
import 'package:flutter/src/widgets/binding.dart';

import 'formulario.dart';
import 'normas.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Categoria> categoriaMenu = [
    Categoria("Pesquisa", icon: Icons.content_paste),
    Categoria("Normas", icon: Icons.description),
    Categoria("Perfomance", icon: Icons.assessment),
    Categoria("Pontos de Parada", icon: Icons.outlined_flag),
    Categoria("Telefone Úteis", icon: Icons.add_call),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Bem-vindo pesquisador(a)",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff243861),
      ),
      backgroundColor: Colors.white,
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                new Text("João Oliveira", style: new TextStyle(fontSize: 20.0)),
            accountEmail: new Text("Matrícula: 099283",
                style: new TextStyle(fontSize: 18.0)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("assets/images/perfil.png"),
            ),
            decoration: new BoxDecoration(color: Color(0xff243861)),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Perfil", style: new TextStyle(fontSize: 20.0)),
          ),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title:
                Text("Redefinir senha", style: new TextStyle(fontSize: 20.0)),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Avisos", style: new TextStyle(fontSize: 20.0)),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text("Normas", style: new TextStyle(fontSize: 20.0)),
          ),
          ListTile(
            leading: Icon(Icons.assessment),
            title: Text("Perfomance", style: new TextStyle(fontSize: 20.0)),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sair", style: new TextStyle(fontSize: 20.0)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      )),

      //CORPO AQUI!!!
      body: Stack(
        children: [
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: _pageView(),
              ),
              SliverPadding(
                padding: EdgeInsets.all(12.0),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return MyMenu(title: categoriaMenu[index].nome, icon: categoriaMenu[index].icon);
                    },
                    childCount: 5,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );

  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Color(0xff243861),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xff243861), width: 10),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          if(title == 'Pesquisa'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FomularioPage()),
            );
          }else if(title == 'Normas'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NormasPage()),
            );
          }
        },
        splashColor: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: new TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_pageView() {
  return Container(

      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 12),
      width: double.infinity,
      height: 230.0,
      child: PageView(
        children: <Widget>[
          Image.network(
              'https://cdn.cnt.org.br/diretorioVirtualPrd/74bf7972-94f4-49db-9156-2db2af11a714_CorteRetangular.png'),
          Image.network(
              'https://cdn.cnt.org.br/diretorioVirtualPrd/48ac6e62-3bd6-4e0a-98f1-144ca17ca9c1_CorteRetangular.png'),
        ],
      ));
}
