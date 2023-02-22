import 'package:flutter_bloc/flutter_bloc.dart';

import 'ath_event.dart';
import '../../../data/repositories/auth_repository.dart';
import 'ath_state.dart';

class AuthBloc extends Bloc<AthEvent, AuthState> {
  final AuthRepository athRepository;

  AuthBloc({required this.athRepository}) : super(InitAthenState()) {
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

  }
}
