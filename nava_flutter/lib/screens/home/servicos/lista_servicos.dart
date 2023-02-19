
import 'package:flutter/material.dart';
import 'package:nava_flutter/screens/home/servicos/item_servico.dart';

class ListaServicos extends StatelessWidget {

  const ListaServicos({Key? key}) : super(key: key);

  void  teste(){
    print("ola ......");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index){
            return ItemService(text: 'Automovel', icon: Icons.add, funtion: teste,

            );
          }
      ),
    );
  }
}