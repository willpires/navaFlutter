import 'package:flutter/cupertino.dart';

class ServicosEntity {
  final int id;
  final String tipo_servico;
  final String image_path;

  ServicosEntity(
      {required this.id, required this.tipo_servico, required this.image_path});
}
