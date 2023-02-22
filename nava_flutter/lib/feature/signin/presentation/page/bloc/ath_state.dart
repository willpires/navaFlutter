import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {}

class Loading extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InitAthenState extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Athenticated extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UnAuthenticated extends AuthState {
  @override
  List<Object?> get props => [];
}

class AthError extends AuthState {
  final String error;

  AthError(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
