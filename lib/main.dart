import 'package:flutter/material.dart';

//MAIN.DART
void main() {
  runApp(const MyApp());
}

//MYAPP
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cleinte System',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Cleinte System'),
      routes: {
        Routes.edit: (context) => EditarCleintePage(),
        Routes.insert: (context) => InserirCleintePage(),
        Routes.list: (context) => ListarCleintesPage(),
      },
    );
  }
}

//MYHOMEPAGE
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

//MYHOMEPAGESTATE
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: AppDrawer(),
    );
  }
}

//DRAWER
//APPDRAWER
class AppDrawer extends StatelessWidget {
//BUILD
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.add,
              text: 'Inserir Cleinte',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Rouflutter tes.insert)),
          Divider(),
          _createDrawerItem(
              icon: Icons.list,
              text: 'Listar Cleintes',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.list)),
          ListTile(title: Text('0.0.1'), onTap: () {}),
        ],
      ),
    );
  }
}

//CREATEHEADER
Widget _createHeader() {
  return const DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('pacote da Imagem.png'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Cadastro de Cleintes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

//CREATEDRAWERITEM

Widget _createDrawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(children: <Widget>[
      Icon(icon),
      Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Text(text),
      )
    ]),
    onTap: onTap,
  );
}


// COMMIT DO DIA 02/01/2024
// COMMIT DO DIA 03/01/2024
// COMMIT DO DIA 04/01/2024
// COMMIT DO DIA 04/01/2024
// COMMIT DO DIA 08/01/2024