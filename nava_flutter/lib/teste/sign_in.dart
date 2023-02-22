



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nava_flutter/blocs/ath_state.dart';
import 'package:nava_flutter/blocs/auth_bloc.dart';

import '../blocs/ath_event.dart';

class testLogin extends StatefulWidget {
  const testLogin({Key? key}) : super(key: key);

  @override
  State<testLogin> createState() => _testLoginState();
}

class _testLoginState extends State<testLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app teste"),
      ),
      body: BlocBuilder<AuthBloc,AuthState>(
        bloc: BlocProvider.of<AuthBloc>(context),
        builder: (context,state){

          if(state is Loading){
            return CircularProgressIndicator();

          }

          if(state is Athenticated){
            return Text("aqui $state");

          }

          if(state is UnAuthenticated){
            return Text("aqui $state");

          }

          if(state is AthError){
            return Text("aqui $state");

          }

          return Text("aqui $state");
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        teste();
      },) ,
    );
  }

  teste() {
    BlocProvider.of<AuthBloc>(context).add(SignInRequested(email: "nava1@teste.com",password: "123456"));
  }
}
