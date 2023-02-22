import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nava_flutter/core/util/open_launcher_url.dart';
import 'package:nava_flutter/feature/home/domain/entity/servicos.dart';
import 'package:nava_flutter/feature/home/presentation/widget/servicos/item_servico.dart';
import 'package:nava_flutter/feature/webView/presentation/web_view.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ListaServicos extends StatelessWidget {
  final automovel = 'assets/images/carro.png';
  final empresa = 'assets/images/empresa.png';
  final residencia = 'assets/images/financeiro.png';
  final vida = 'assets/images/vida.png';
  final acidente_pessoais = 'assets/images/acidente_pessoais.png';
  final moto = 'assets/images/moto.png';

  const ListaServicos({Key? key}) : super(key: key);

  void teste(int idServico, BuildContext context) {
    if (idServico == 1) {
      var web = OpenLaunchUrl();

      if (kIsWeb) {
        web.open();
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (builder) => AppWebView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var servicosList = <ServicosEntity>[];

    final servico1 = ServicosEntity(id: 1, tipo_servico: "Automovel", image_path: automovel);
    final servico2 = ServicosEntity(id: 2, tipo_servico: "Residencia", image_path: residencia);
    final servico3 = ServicosEntity(id: 3, tipo_servico: "Vida", image_path: vida);
    final servico4 = ServicosEntity(id: 4, tipo_servico: "Acidente Pessoais", image_path:  acidente_pessoais);
    final servico5 = ServicosEntity(id: 5, tipo_servico: "Moto", image_path:  moto);
    final servico6 = ServicosEntity(id: 6, tipo_servico: "Empresa", image_path:  empresa);

    servicosList.add(servico1);
    servicosList.add(servico2);
    servicosList.add(servico3);
    servicosList.add(servico4);
    servicosList.add(servico5);
    servicosList.add(servico6);

    return Container(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: servicosList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemService(
              text: servicosList[index].tipo_servico,
              image_path: servicosList[index].image_path,
              funtion: () {
                teste(servicosList[index].id, context);
              },
            );
          }),
    );
  }
}
