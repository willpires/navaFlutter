

import 'package:flutter/material.dart';
import 'package:nava_flutter/util/colors.dart';

class AppTheme {

   static ThemeData data  =  ThemeData(
    visualDensity: VisualDensity.compact,
    primaryColor: AppColors.colorBackgroundFooter,
    colorScheme: ColorScheme.fromSwatch(
        accentColor: AppColors.colorCustomGreen,
        backgroundColor: AppColors.corDoCardDosCampos
    ),
  );
}