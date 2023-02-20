import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Align(
        alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(Icons.flutter_dash),
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
          ),
      ),
    );
  }
}
