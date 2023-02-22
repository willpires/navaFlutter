import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;



class HeaderWidget extends StatelessWidget {
  HeaderWidget({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(-1.0, 0.1),
            end: const Alignment(1.0, 1.1),
            colors: [
              colorCustomGreen,
              colorCustomYellow,
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
            left: 32,
            right: 32,
            top: ((MediaQuery.of(context).size.height/100)*8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment:  kIsWeb == true? MainAxisAlignment.center : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: const Icon(Icons.flutter_dash_sharp),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tokioMarine,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          seguradoras,
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
              ),
              Text(
                bemVindo,
                textAlign: kIsWeb == true?TextAlign.center:null,
                style: TextStyle(
                  fontSize:  ((MediaQuery.of(context).size.height/100)*3.5),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                height:  ((MediaQuery.of(context).size.height/100)*0.9),
                color: Colors.transparent,
              ),
              Text(
                aquiVoceGerenciaSeusSeguros,
                textAlign: kIsWeb == true?TextAlign.center:null,
                style: TextStyle(
                  fontSize: 16.0,
                  height: ((MediaQuery.of(context).size.height/100)*0.2),
                  color: Colors.white,
                  letterSpacing: 1.0,
                ),
              ),
              Container(
                height: 80,
                color: Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}