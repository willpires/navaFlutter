import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  final perfil = 'assets/images/perfil.png';


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          const Text("Olá",
              style: TextStyle(
              color: Colors.white
          )),
          Row(
            children: [
              Image.asset(perfil, width: 40,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Text("CAIO MAXIMO",
                       style: TextStyle(
                         fontSize: 15,
                        color: Colors.white,
                         fontWeight:FontWeight.bold ,

                    ),),
                    Text("Minha conta",
                      textAlign: TextAlign.start, style:TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                        fontWeight:FontWeight.bold
                    ))
                  ],),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

