import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nava_flutter/feature/technical_assistance/presentation/widget/field_custom/field_custom.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormState();
}

class _FormState extends State<Forms> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 10,
          ),
          FieldCustom(text: "CPF/CNPJ", textInputType: TextInputType.text),
          Divider(
            height: 10,
          ),
          FieldCustom(text: "PLACA", textInputType: TextInputType.text),
          Divider(
            height: 10,
            color: Colors.transparent,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {},
              child: Text("Buscar"),
            ),
          )
        ],
      ),
    );
  }
}
