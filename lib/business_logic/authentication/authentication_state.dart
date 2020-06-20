part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
  @override
  List<Object> get props => [];
}

// waiting to see if the user is authenticated or not on app start
class AuthenticationInitial extends AuthenticationState {}

// successfuly authenticated
class AuthenticationSuccess extends AuthenticationState {}

// not authenticated
class AuthenticationFailure extends AuthenticationState {}

// waiting to persist or delete a token
class AuthenticationInProgress extends AuthenticationState {}
