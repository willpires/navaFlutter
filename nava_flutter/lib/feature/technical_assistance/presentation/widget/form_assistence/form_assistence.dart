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
          const Divider(
            height: 10,
          ),
          const FieldCustom(text: "CPF/CNPJ", textInputType: TextInputType.text),
          const Divider(
            height: 10,
          ),
          const FieldCustom(text: "PLACA", textInputType: TextInputType.text),
          const Divider(
            height: 30,
            color: Colors.transparent,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
                style:ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1
                    )
                  )
                ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Buscar",style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
