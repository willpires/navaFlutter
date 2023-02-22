import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nava_flutter/feature/home/presentation/page/home_page.dart';
import 'package:nava_flutter/feature/signin/presentation/page/bloc/ath_state.dart';
import 'package:nava_flutter/feature/signin/presentation/page/bloc/auth_bloc.dart';
import 'package:nava_flutter/feature/signin/presentation/page/signin.page.presentation.dart';
import 'package:nava_flutter/shared/theme/theme.dart';

import 'firebase_options.dart';
import 'package:nava_flutter/core/injection/dependency.injection.dart' as  di;



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await di.init();
  // WebViewPlatform.instance = AppWebView();

  // final autRepository = AuthRepository();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: AppTheme.data,
    home: BlocProvider<AuthBloc>(
      create: (context) => di.getItInstance<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context , state){
          if(state is AthError){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error),));

          }else if(state is UnAuthenticated){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("UnAuthenticated"),));

          }else if(state is Athenticated){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>  HomePage(),
              ),
            );
          }
        },
        child: SignInPage(),
      ),
    ),
  ));
}
