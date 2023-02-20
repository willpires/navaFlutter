import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.orange,
      child: ListTile(
        leading: FlutterLogo(
          size: 56.0,
        ),
        title: Text("Bem vindo"),
        subtitle: Text("Caio Maximo"),
      ),
    );
  }
}
