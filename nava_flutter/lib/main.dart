import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nava_flutter/blocs/auth_bloc.dart';
import 'package:nava_flutter/screens/home/home_page.dart';
import 'package:nava_flutter/screens/presentation/signin.page.presentation.dart';
import 'package:nava_flutter/teste/sign_in.dart';
import 'package:nava_flutter/theme/theme.dart';

import 'blocs/auth_repository.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // WebViewPlatform.instance = AppWebView();

  final autRepository = AuthRepository();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: AppTheme.data,
    home: BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(athRepository: autRepository),
      child: App(),
    ),
  ));
}
