import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final passwordController = TextEditingController();
  final loginController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: loginController,
          decoration: const InputDecoration(labelText: 'Login'),
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  print(loginController.text);
                  print(passwordController.text);
                },
                icon: const Icon(Icons.keyboard_alt_outlined),
                label: const Text('submit'),
              )
            ],
          ),
        )
      ],
    );
  }
}
