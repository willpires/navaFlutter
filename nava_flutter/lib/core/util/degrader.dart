

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Degrader {

  static BoxDecoration decoration = BoxDecoration(
    gradient: LinearGradient(
      begin: const Alignment(-1.0, 0.1),
      end: const Alignment(1.0, 1.1),
      colors: [
        AppColors.colorCustomGreen,
        AppColors.colorCustomYellow,
      ],
    ),
  );

}