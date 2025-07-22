import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Auth App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login', // Changed from '/home1' to '/login'
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
      },
    );
  }
}
