import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicosAdiconais extends StatelessWidget {
  final String text;
  final String subText;

  final IconData iconData;
  
  const ServicosAdiconais({Key? key, required this.text, required this.subText, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(this.text),
        SizedBox(
          height: 200,
          width: 100,
          child: Card(
            color: Colors.greenAccent,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Icon(iconData),
                    Text(subText)
                ],
              ),
            ),

          ),
        ),
      ],
    );
  }
}
