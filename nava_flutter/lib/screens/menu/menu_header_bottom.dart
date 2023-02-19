


import 'package:flutter/material.dart';

class MenuHeaderBottom extends StatelessWidget {
  const MenuHeaderBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: const [
            Icon(Icons.phone_android),
            Text("Duvidas? Gasrnta agora o seu cartao")
          ],
        ),
      ),
    );
  }
}
