


import 'package:flutter/material.dart';
import 'package:nava_flutter/util/degrader.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: Degrader.decoration,
      child: const ListTile(
        leading: Icon(Icons.flutter_dash, size: 40,),
        title: Text("Bem vindo"),
        subtitle: Text("Caio Maximo"),

      ),
    );
  }
}