


import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.amber,
      child: const ListTile(
        leading: FlutterLogo(size:56.0),
        title: Text("Bem vindo"),
        subtitle: Text("Caio Maximo"),

      ),
    );
  }
}