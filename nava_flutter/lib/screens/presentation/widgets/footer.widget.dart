import 'package:flutter/material.dart';

import 'icon.button.widget.dart';

class FooterWidget extends StatelessWidget {
  FooterWidget({Key? key}) : super(key: key);

  final colorCustomGreen = const Color(0xFF34A48E);
  final corDoCardDosCampos = const Color(0xFF2B2A38);
  final colorBackgroundFooter = const Color(0xFF212129);
  final colorCustomYellow = const Color(0xFFE8E07E);

  final aquiVoceGerenciaSeusSeguros =
      "Aqui você gerencia seus seguros e de seus familiares em poucos cliques!";

  final bemVindo = "Bem vindo!";
  final seguradoras = "Seguradora".toUpperCase();
  final tokioMarine = "Tokio Marine".toUpperCase();
  final resolve = "Resolve".toUpperCase();
  final tokio = "Tokio".toUpperCase();

  final acesseAtravesDasRedes = "Acesse através das redes sociais";
  final pathIconGoogle = 'assets/images/icon_google.png';
  final pathIconFacebook = 'assets/images/icon_facebook.png';
  final pathIconTwitter = 'assets/images/icon_twitter.png';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          color: colorBackgroundFooter,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 180.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  child: const Icon(
                    Icons.flutter_dash_sharp,
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tokio,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      resolve,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: Text(
                  acesseAtravesDasRedes,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonWidget(
                  imagePath: pathIconGoogle,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                IconButtonWidget(
                  imagePath: pathIconFacebook,
                ),
                const SizedBox(
                    width: 8.0
                ),
                IconButtonWidget(
                  imagePath: pathIconTwitter,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}