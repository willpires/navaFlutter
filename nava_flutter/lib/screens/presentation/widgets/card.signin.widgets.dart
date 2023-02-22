import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nava_flutter/blocs/ath_event.dart';
import 'package:nava_flutter/blocs/auth_bloc.dart';
import 'package:nava_flutter/screens/home/home_page.dart';

import 'form.field.widgets.dart';

class CardFieldWidget extends StatelessWidget {
  CardFieldWidget({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final colorGreen = const Color(0xFF34A48E);
  final corDoCardDosCampos = const Color(0xFF2B2A38);
  final entrar = "Entrar";
  final cadastrar = "Cadastrar";
  final cpf = "CPF";
  final senha = "Senha";
  final lembrarSempre = "Lembrar Sempre";
  final esqueceuSsenha = "Esqueceu a senha?";
  final preenchaCpf = "Preencha com o CPF";
  final preenchaSenha = "Preencha a senha";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 900.0,
      height: 320.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 350.0,
            height: 270.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 8.0,
              color: corDoCardDosCampos,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 8),
                        child: _buildSignIn(context),
                      ),
                      FormFieldWidget(
                        textoPlaceholder: cpf,
                        mensagemCampoVazio: preenchaCpf,
                        corDoCardDosCampos: corDoCardDosCampos,
                      ),
                      FormFieldWidget(
                        textoPlaceholder: senha,
                        mensagemCampoVazio: preenchaSenha,
                        corDoCardDosCampos: corDoCardDosCampos,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 8),
                        child: _buildCardFooter(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 80.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(SignInRequested(email: "nava1@teste.com", password: "123456"));

                  },
                  backgroundColor: corDoCardDosCampos,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment(-1.0, 0.1),
                        end: Alignment(1.0, 1.1),
                        colors: [
                          Color(0xFF34A48E),
                          Color(0xFFE8E07E),
                        ],
                      ),
                    ),
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignIn( BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {

          },
          child: Text(
            entrar,
            style: TextStyle(
              color: colorGreen,
              fontSize: 16.0,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            cadastrar,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildCardFooter() {
    return Row(
      children: [
        const CheckboxWidget(),
        Text(
          lembrarSempre,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            esqueceuSsenha,
            style: TextStyle(
              color: colorGreen,
            ),
          ),
        ),
      ],
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.selected,
      MaterialState.focused,
      MaterialState.pressed,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.blue;
  }
}