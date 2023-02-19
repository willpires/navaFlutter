
import 'package:flutter/material.dart';

class ItemService extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function funtion;

  ItemService( { required this.text, required this.icon, required this.funtion} );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: SizedBox(
        width: 80,
        height: 70,
        child: Card(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon ,
                  size: 20,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
        ),
      ),
      onTap: (){
        funtion();
      },

    );
  }

}