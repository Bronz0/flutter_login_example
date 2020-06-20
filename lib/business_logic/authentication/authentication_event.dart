part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
  @override
  List<Object> get props => [];
}

// notify the bloc to check if the user is authenticated or not
class AuthenticationStarted extends AuthenticationEvent {}

// notify the bloc that the user has successfully logged in
class AuthenticationLoggedIn extends AuthenticationEvent {
  final String token;

  const AuthenticationLoggedIn({@required this.token});

  @override
  List<Object> get props => [token];

  @override
  String toString() => 'AuthenticationLoggedIn { token: $token }';
}

// notify the bloc that the user has successfully logged out.
class AuthenticationLoggedOut extends AuthenticationEvent {}
