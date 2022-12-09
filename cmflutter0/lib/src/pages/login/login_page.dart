import 'package:cmflutter0/src/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  int count = 0;

  @override
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(32),
                height: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ..._buildTextFields(),
                    SizedBox(height: 32),
                    ..._buildButtons(),
                    Row(
                      children: [
                        Text('Debug: ${context.read<LoginBloc>().state.count}'),
                        IconButton(
                          onPressed: _handleClickAdd,
                          icon: Icon(Icons.add),
                        ),
                        IconButton(
                          onPressed: _handleClickRemove,
                          icon: Icon(Icons.remove),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }

  void _handleLogin() {
    // print(
    //     "CMDev: login with ${_usernameController.text}, ${_passwordController.text}");
    Navigator.pushNamed(context, AppRoute.home);
  }

  void _handleReset() {
    _usernameController.text = "";
    _passwordController.text = "";
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "Username"),
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: "Password"),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(
        onPressed: _handleLogin,
        child: Text("SignIn"),
      ),
      SizedBox(height: 10),
      OutlinedButton(
        onPressed: _handleRegister,
        child: Text("Register"),
      ),
      SizedBox(height: 10),
      OutlinedButton(
        onPressed: _handleReset,
        child: Text("Reset"),
      )
    ];
  }

  void _handleRegister() {
    Navigator.pushNamed(context, AppRoute.register);
  }

  void _handleClickAdd() {
    setState(() {
      count++;
    });
  }

  void _handleClickRemove() {
    setState(() {
      count--;
    });
  }
}
