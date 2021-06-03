import 'package:crypto_app/theme.dart';
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
        primarySwatch: Colors.indigo,
        accentColor: thirdColor,
        scaffoldBackgroundColor: scaffoldColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
