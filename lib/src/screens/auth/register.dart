import 'package:flutter/material.dart';
import 'package:flutter_starter_project/src/services/auth_api.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  const RegisterPage({
    super.key,
    this.name,
    this.email,
    this.password,
  });

  final String? name;
  final String? email;
  final String? password;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name ?? '';
    emailController.text = widget.email ?? '';
    passwordController.text = widget.password ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
          ),
          const SizedBox(height: 10),
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
            onPressed: onRegisterAction,
            child: const Center(child: Text('Register')),
          ),
        ],
      ),
    );
  }

  Future<void> onRegisterAction() async {
    final name = nameController.text;
    final email = emailController.text;
    final password = passwordController.text;
    AuthApi.register(name, email, password);
  }
}
