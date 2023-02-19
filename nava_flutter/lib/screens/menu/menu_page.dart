import 'package:flutter/material.dart';
import 'package:nava_flutter/screens/menu/menu_header.dart';
import 'package:nava_flutter/screens/menu/menu_item.dart';

import 'menu_header_bottom.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Colors.red),
          child: HeaderMenu(),
        ),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        const ItemMenu(title: "Home/seguro"),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: const [Text("Sair")],
          ),
        ),
        Divider(height: 40,color: Colors.transparent,),
        Expanded(child: MenuHeaderBottom())

      ],
    );
  }
}
