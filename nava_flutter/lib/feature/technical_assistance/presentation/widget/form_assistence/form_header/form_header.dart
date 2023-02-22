import 'package:flutter/material.dart';

class FormsHeader extends StatelessWidget {
  const FormsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Card(
          elevation: 0,
          child: ListTile(
            title: Text("Assistencia"),
            subtitle: Text("Automovel"),
          ),
        )
      ],
    );
  }
}
