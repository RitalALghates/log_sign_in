import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D4B7B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              ClipOval(
                child: Image.asset(
                  'images/logo.jpg',
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter email or username',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Recovery Password",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "or continue with",
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton('images/google.png'),
                  const SizedBox(width: 16),
                  _socialButton('images/apple.png'),
                  const SizedBox(width: 16),
                  _socialButton('images/facebook.png'),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text(
                  "Not a member? Register now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/home1',
                  ); // Navigate to HomeScreen1
                },
                child: const Text(
                  "continue as Guest",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String imagePath) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 22,
      child: Image.asset(imagePath, height: 24),
    );
  }
}
