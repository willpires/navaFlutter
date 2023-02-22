
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nava_flutter/feature/signin/presentation/page/bloc/auth_bloc.dart';
import 'package:nava_flutter/feature/signin/presentation/widget/card.signin.widgets.dart';
import 'package:nava_flutter/feature/signin/presentation/widget/footer.widget.dart';

import '../widget/header.widget.dart';
import 'bloc/ath_state.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

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

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: BlocBuilder<AuthBloc,AuthState>(
        builder: (context, state){
          return Stack(
            children: [
              Column(
                children: [
                  HeaderWidget(),
                  FooterWidget(),
                ],
              ),
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CardFieldWidget(),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

  }


}