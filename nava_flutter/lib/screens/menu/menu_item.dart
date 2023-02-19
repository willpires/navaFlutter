// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String title;

  const ItemMenu({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity.compact,
      leading: const Icon(Icons.settings),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
