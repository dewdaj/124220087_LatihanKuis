import 'package:flutter/material.dart';
import './pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Menu Makanan',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink[50],
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.pink[800]),
          bodyMedium: TextStyle(color: Colors.pink[800]),
        ),
      ),
      home: LoginPage(),
    );
  }
}
