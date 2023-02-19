

import 'package:flutter/material.dart';

class AssistenciaTecnica extends StatelessWidget {
  const AssistenciaTecnica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  const [
            AssitenciaSubHeader(),
            Divider(height: 1,color: Colors.blueGrey,),
            Padding(
              padding: EdgeInsets.only(left: 14.0,right: 14.0),
              child: formularioHeader(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Formulario(),
            )
          ],
        ),
      ),
    ) ;
  }

  }



  class AssitenciaSubHeader extends StatelessWidget {
    const AssitenciaSubHeader({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.flutter_dash,size: 55.5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "TOKKO MARINE",
                style: TextStyle(fontSize: 12),
              ),
              Text("SEGURADORA", style: TextStyle(fontSize: 12))
            ],
          )
        ],
      );
    }
  }


  class Formulario extends StatefulWidget {
    const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {


  final _formKey = GlobalKey<FormState>();

  @override
    Widget build(BuildContext context) {
      return  Form(
        key: _formKey,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   [
        Divider(height: 10,),
        Campo(text: "CPF/CNPJ", textInputType: TextInputType.text),
        Divider(height: 10,),
        Campo(text: "PLACA", textInputType: TextInputType.text),
        Divider(height: 10,color: Colors.transparent,),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(

            ),
          onPressed: (){

          },
          child: Text("Buscar"),
            ),
        )
      ],)
        ,);
    }
}



  class formularioHeader extends StatelessWidget {
    const formularioHeader({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return  Column(
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
  
  
  class Campo extends StatelessWidget {
  
    final String text;
    final TextInputType  textInputType;
    
    const Campo({required this.text, required this.textInputType});
  
    @override
    Widget build(BuildContext context) {
      return  Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Divider(height: 8,color: Colors.transparent,),
            Text(text,
            ),
            Divider(height: 8,color: Colors.transparent,),
            SizedBox(
              height: 40,
              child: TextFormField(

                keyboardType: textInputType,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5)
                ),

              ),
            ),
          ],
        ),
      );
    }
  }
  
  
  







