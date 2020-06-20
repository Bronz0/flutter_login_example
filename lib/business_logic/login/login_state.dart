part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

// the initial state of the LoginForm
class LoginInitial extends LoginState {}

// state of login form when we are validating credentials
class LoginInProgress extends LoginState {}

// state of the login form when a login attempt has failed
class LoginFailure extends LoginState {
  final String error;

  const LoginFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}
