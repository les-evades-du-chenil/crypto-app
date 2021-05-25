import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
