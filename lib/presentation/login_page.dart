import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_example/business_logic/authentication/authentication_bloc.dart';
import 'package:flutter_login_example/business_logic/login/login_bloc.dart';
import 'package:flutter_login_example/data/authentication/user_repository.dart';
import 'package:flutter_login_example/presentation/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  final UserRepository userRepository;

  const LoginPage({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: BlocProvider(
          create: (context) => LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository,
          ),
          child: LoginForm(),
        ));
  }
}
