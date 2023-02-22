import 'package:flutter/material.dart';
import 'package:nava_flutter/blocs/auth_repository.dart';
import 'package:nava_flutter/screens/home/home_header.dart';
import 'package:nava_flutter/screens/home/servcisoAdiconas/servicos_adicionas.dart';
import 'package:nava_flutter/screens/home/servicos/lista_servicos.dart';
import 'package:nava_flutter/screens/home/subHeader/sub_Header.dart';
import 'package:nava_flutter/screens/menu/menu_page.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


@override
  void initState() {
    // TODO: implement initState
    super.initState();

    final teste =  AuthRepository();
    teste.signIn(email: "nava1@teste.com", password: "123456");
}

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: const HomeHeader(),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Stack(children: const [
              Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              Positioned(
                  left: 16.0,
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.white,
                    size: 9.0,
                  ))
            ]))
      ],
    );
    return Scaffold(
      appBar: appBar,

      drawer: const Drawer(
        child: MenuPage(),
      ),

      body: SingleChildScrollView(
          child: ContainerMain(
        appBar: appBar,
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ContainerMain extends StatelessWidget {
  final AppBar appBar;

  const ContainerMain({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(
        " teste ${MediaQuery.of(context).size.height - appBar.preferredSize.height}");

    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SubHeader(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Text(
                  "Cotar e Contratar",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                ListaServicos(),
                Divider(
                  height: 14,
                  color: Colors.transparent,
                ),
                ServicosAdiconais(
                    text: "Minha Familia",
                    subText:
                        "Adicione aqui membros da sua familia e compartilhe os seguros com eles.",
                    iconData: Icons.add),
                Divider(
                  height: 14,
                  color: Colors.transparent,
                ),
                ServicosAdiconais(
                    text: "Contratos",
                    subText: "Você ainda nao possui seguros contratos.",
                    iconData: Icons.add)
              ],
            ),
          )
        ],
      ),
    );
  }
}
