import 'package:flutter/material.dart';
import 'package:nava_flutter/core/util/valid_email.dart';

enum TypeField {
      Email,
      Password
}

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    Key? key,
    required this.textoPlaceholder,
    required this.mensagemCampoVazio,
    required this.corDoCardDosCampos,
    required this.controller,
    required this.type,
  }) : super(key: key);

  final String textoPlaceholder;
  final String mensagemCampoVazio;
  final Color corDoCardDosCampos;
  final TextEditingController controller;
  final  TypeField type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              width: 1.8,
              color: Colors.white,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              width: 1.8,
              color: Color(0xFF34A48E),
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              width: 1.8,
            ),
          ),
          hintText: textoPlaceholder,
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          filled: true,
          fillColor: corDoCardDosCampos,
        ),
        style: const TextStyle(color: Colors.white),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return mensagemCampoVazio;
          }

          if(type == TypeField.Email){
            if(!value.isValidEmail()){
              return "Email inv??lido!";
            }
          }

          return null;
        },
      ),
    );
    ;
  }
}