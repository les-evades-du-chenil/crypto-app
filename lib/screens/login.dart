import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';

import './components/login_form.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      // ),
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
              alignment: Alignment.center,
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
              child: LoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}
