import 'package:flutter/material.dart';
import 'package:flutter_starter_project/src/services/auth_api.dart';

class ForgetPassword extends StatefulWidget {
  static const routeName = '/forget-password';
  final String? email;
  final String? password;
  const ForgetPassword({
    super.key,
    this.email,
    this.password,
  });

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = widget.email ?? '';
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
          ElevatedButton(
            onPressed: onForgetAction,
            child: const Center(child: Text('Login')),
          ),
        ],
      ),
    );
  }

  Future<void> onForgetAction() async {
    final email = emailController.text;
    AuthApi.forgetPassword(email);
  }
}
