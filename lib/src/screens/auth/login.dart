import 'package:flutter/material.dart';
import 'package:flutter_starter_project/src/services/auth_api.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  final String? email;
  final String? password;
  const LoginPage({
    super.key,
    this.email,
    this.password,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = widget.email ?? '';
    passwordController.text = widget.password ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onLoginAction,
            child: const Center(child: Text('Login')),
          ),
        ],
      ),
    );
  }

  Future<void> onLoginAction() async {
    final email = emailController.text;
    final password = passwordController.text;
    AuthApi.login(email, password);
  }
}
