import 'package:flutter/material.dart';
import 'package:nava_flutter/feature/home/presentation/widget/menu/menu_header.dart';
import 'package:nava_flutter/feature/home/presentation/widget/menu/menu_item.dart';

import 'menu_header_bottom.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: HeaderMenu(),
          ),
          const ItemMenu(title: "Home/seguro"),
          const ItemMenu(title: "Minhas Configurações"),
          const ItemMenu(title: "Meus Contratos"),
          const ItemMenu(title: "Minha Família"),
          const ItemMenu(title: "Meus Bonus"),
          const ItemMenu(title: "Pagamentos"),
          const ItemMenu(title: "Corretores"),
          const ItemMenu(title: "Viagens"),
          const ItemMenu(title: "Telefones Importantes"),
          const ItemMenu(title: "Configurações"),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: const [
                Text(
                  "Sair",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const Divider(
            height: 40,
            color: Colors.transparent,
          ),
          Expanded(child: MenuHeaderBottom())
        ],
      ),
    );
  }
}
