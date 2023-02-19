import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nava_flutter/screens/assistenciaTecnica/assistencia_tecnica.dart';
import 'package:nava_flutter/screens/home/home_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const AssistenciaTecnica(),
  ));
}
