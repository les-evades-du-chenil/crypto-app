import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(
        child: Container(
          height: 300,
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.outbox),
              ),
              const Text("Login Page"),
            ],
          ),
        ),
      ),
    );
  }
}
