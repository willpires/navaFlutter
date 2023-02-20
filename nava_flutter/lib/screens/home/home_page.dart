import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nava_flutter/screens/home/home_header.dart';
import 'package:nava_flutter/screens/home/servcisoAdiconas/servicos_adicionas.dart';
import 'package:nava_flutter/screens/home/servicos/lista_servicos.dart';
import 'package:nava_flutter/screens/home/subHeader/sub_Header.dart';
import 'package:nava_flutter/screens/menu/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title:  const  HomeHeader(),
        actions: [
          IconButton(onPressed: (){},
              icon: Stack(children: const  [
             Icon(Icons.notifications,color: Colors.red,),
            Positioned(
                left: 16.0,
                child: Icon(Icons.brightness_1,
                  color:Colors.white ,
                  size: 9.0,
                )

            )
          ]) )



        ],
      ),

      drawer: const Drawer(
        child: MenuPage(),
      ),

      body: const ContainerMain(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ContainerMain extends StatelessWidget {
  const ContainerMain({Key? key}) : super(key: key);

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
                Text("Cotar e Contratar",style:
                TextStyle(
                    color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26
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
