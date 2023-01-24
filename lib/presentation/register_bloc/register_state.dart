part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();
  
  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}
class ResgisterLoading extends RegisterState {}

class ResgisterSuccess extends RegisterState {
  final Success success;
  const ResgisterSuccess(this.success);
  @override
  List<Object> get props => [success];
}

class ResgisterFailed extends RegisterState {
  final Failure failure;
  const ResgisterFailed(this.failure);
  @override
  List<Object> get props => [failure];
}
