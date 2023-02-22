import 'package:flutter/material.dart';
import 'package:nava_flutter/core/util/degrader.dart';

class MenuHeaderBottom extends StatelessWidget {
  const MenuHeaderBottom({Key? key}) : super(key: key);
  final perfil = 'assets/images/perfil.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Degrader.decoration,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Image.asset(perfil,height: 40,),
            const Divider(height: 10,color: Colors.transparent,),
            const Text(
              "Duvidas? Gasrnta agora o seu cartao.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
