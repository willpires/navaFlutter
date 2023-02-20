import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nava_flutter/screens/home/home_page.dart';
import 'package:nava_flutter/screens/presentation/signin.page.presentation.dart';
import 'package:nava_flutter/theme/theme.dart';
import 'package:nava_flutter/util/colors.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme:AppTheme.data,
    home: const HomePage(
      title: 'maria',
    ),
  ));
}
