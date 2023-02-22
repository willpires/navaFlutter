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
          Container(height: 160,
          alignment: Alignment.topLeft,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: HeaderMenu(),
            ),
          ),
          const ItemMenu(title: "Home/seguro"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Minhas Configurações"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Meus Contratos"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Minha Família"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Meus Bonus"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Pagamentos"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Corretores"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Viagens"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
          const ItemMenu(title: "Telefones Importantes"),
          Divider(height: 1,color: Theme.of(context).colorScheme.background,),
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
