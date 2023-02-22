import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nava_flutter/blocs/ath_state.dart';

import 'ath_event.dart';
import 'auth_repository.dart';

class AuthBloc extends Bloc<AthEvent, AuthState> {
  final AuthRepository athRepository;

  AuthBloc({required this.athRepository}) : super(Loading()) {
    on<SignInRequested>(
      (event, emit) async {
        try {
          await athRepository.signIn(
            email: event.email,
            password: event.password,
          );
          emit(Athenticated());
        } catch (e) {
          emit(AthError(e.toString()));
          emit(UnAuthenticated());
        }
      },
    );
    // on<SignUpRequested>((event, emit) async {
    //   try {
    //     await athRepository.signUp(
    //       email: event.email,
    //       password: event.password,
    //     );
    //
    //     emit(Athenticated());
    //   } catch (e) {
    //     emit(AthError(e.toString()));
    //     emit(UnAuthenticated());
    //   }
    // });
  }
}
