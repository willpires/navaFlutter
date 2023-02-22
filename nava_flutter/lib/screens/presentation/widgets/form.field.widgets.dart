import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    Key? key,
    required this.textoPlaceholder,
    required this.mensagemCampoVazio,
    required this.corDoCardDosCampos,
  }) : super(key: key);

  final String textoPlaceholder;
  final String mensagemCampoVazio;
  final Color corDoCardDosCampos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
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
          return null;
        },
      ),
    );
    ;
  }
}