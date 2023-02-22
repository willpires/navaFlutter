import 'package:flutter/material.dart';
import 'package:nava_flutter/feature/home/presentation/widget/home_header/home_header.dart';
import 'package:nava_flutter/feature/home/presentation/widget/servicos/lista_servicos.dart';
import 'package:nava_flutter/feature/home/presentation/widget/subHeader/sub_Header.dart';
import 'package:nava_flutter/feature/home/presentation/widget/menu/menu_page.dart';

import '../widget/servcos_adicionais/servicos_adicionas.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Icons.notifications_none,
                color: Colors.white,
              ),
              Positioned(
                  left: 16.0,
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.purpleAccent,
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
      backgroundColor: Theme.of(context).primaryColor,
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
                    fontSize: 26,
                  ),
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
                  text: "Minha Família",
                  subText:
                      "Adicione aqui membros da sua família e compartilhe os seguros com eles.",
                  iconData: Icons.add_circle_outline,
                ),
                Divider(
                  height: 14,
                  color: Colors.transparent,
                ),
                ServicosAdiconais(
                  text: "Contratos",
                  subText: "Você ainda não possui seguros contratos.",
                  iconData: Icons.sentiment_very_dissatisfied,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
