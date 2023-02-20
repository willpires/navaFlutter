import 'package:flutter/material.dart';
import 'package:nava_flutter/entity/servicos.dart';
import 'package:nava_flutter/screens/home/servicos/item_servico.dart';
import 'package:nava_flutter/screens/webview/web_view.dart';

class ListaServicos extends StatelessWidget {
  const ListaServicos({Key? key}) : super(key: key);

  void teste(int idServico, BuildContext context) {
    print("ola ...... $idServico");
    if (idServico == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => AppWebView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    var servicosList = <ServicosEntity>[];

    final servico1 =
        ServicosEntity(id: 1, tipo_servico: "Automovel", icon: Icons.add);
    final servico2 =
        ServicosEntity(id: 2, tipo_servico: "Residencia", icon: Icons.add);
    final servico3 =
        ServicosEntity(id: 3, tipo_servico: "servico3", icon: Icons.add);
    final servico4 =
        ServicosEntity(id: 4, tipo_servico: "servico4", icon: Icons.add);
    final servico5 =
        ServicosEntity(id: 5, tipo_servico: "servico5", icon: Icons.add);
    final servico6 =
        ServicosEntity(id: 6, tipo_servico: "servico6", icon: Icons.add);
    final servico7 =
        ServicosEntity(id: 7, tipo_servico: "servico7", icon: Icons.add);

    servicosList.add(servico1);
    servicosList.add(servico2);
    servicosList.add(servico3);
    servicosList.add(servico4);
    servicosList.add(servico5);
    servicosList.add(servico6);
    servicosList.add(servico7);

    // "Automovel",
    // "Residencia",
    // "Vida",
    // "Acidentente Pessoas",
    // "Moto",
    // "Empresa"
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: servicosList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemService(
              text: servicosList[index].tipo_servico,
              icon: Icons.add,
              funtion: () {
                teste(servicosList[index].id, context);
              },
            );
          }),
    );
  }
}
