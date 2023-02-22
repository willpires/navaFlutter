import 'package:flutter/material.dart';

class ItemService extends StatelessWidget {
  final String text;
  final String image_path;
  final Function funtion;

  const ItemService({
    required this.text,
    required this.image_path,
    required this.funtion,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: SizedBox(
        width: 100,
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          color: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(image_path, height:  25,width: 30,color: Colors.green,),
                  // Icon(
                  //   icon,
                  //   size: 20,
                  //   color: Colors.white,
                  // ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,

                    ),

                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        funtion();
      },
    );
  }
}
