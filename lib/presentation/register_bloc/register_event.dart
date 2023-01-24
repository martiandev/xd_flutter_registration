part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterFirebaseEvent extends RegisterEvent{
  final String username;
  final String password;

  const RegisterFirebaseEvent(this.username, this.password);
  @override
  List<Object> get props => [username,password];
}
