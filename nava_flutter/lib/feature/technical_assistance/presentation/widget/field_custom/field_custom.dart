import 'package:flutter/material.dart';

class FieldCustom extends StatelessWidget {
  final String text;
  final TextInputType textInputType;

  const FieldCustom({required this.text, required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          Divider(
            height: 8,
            color: Colors.transparent,
          ),
          Text(
            text,
          ),
          Divider(
            height: 8,
            color: Colors.transparent,
          ),
          Container(
            height: 46,
            child: TextFormField(
              keyboardType: textInputType,

            ),
          ),
        ],
      ),
    );
  }
}

// decoration: const InputDecoration(
// border: OutlineInputBorder(),

