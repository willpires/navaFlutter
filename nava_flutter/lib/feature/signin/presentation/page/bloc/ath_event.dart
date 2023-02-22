import 'package:equatable/equatable.dart';

abstract class AthEvent extends Equatable {}

class SignInRequested extends AthEvent {
  final String email;
  final String password;

  SignInRequested({ required this.email, required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [ email,password];
}



class AddLoadAth extends AthEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
