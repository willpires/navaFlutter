


import 'package:flutter/material.dart';

class AssistanceSubHeader extends StatelessWidget {
  const AssistanceSubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.flutter_dash,
          size: 55.5,
        ),
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