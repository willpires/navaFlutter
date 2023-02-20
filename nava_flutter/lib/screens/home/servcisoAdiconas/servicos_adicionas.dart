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
        Text(this.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        ),
        Divider(height: 10,),
        SizedBox(
          height: 200,
          width: 100,
          child: Card(
            color: Theme.of(context).colorScheme.background,
            child: Padding(
              padding:  EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Icon(iconData),
                    Text(subText,style: TextStyle(
                      color: Colors.white
                    ) ,)
                ],
              ),
            ),

          ),
        ),
      ],
    );
  }
}
