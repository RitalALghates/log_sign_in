import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              _buildTextField("Enter email or username"),
              const SizedBox(height: 12),
              _buildTextField("Mobile number"),
              const SizedBox(height: 12),
              _buildTextField("Password", isPassword: true),
              const SizedBox(height: 12),
              _buildTextField("Re-enter Password", isPassword: true),
              const SizedBox(height: 20),
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
                  "Sign up and continue",
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
                  Navigator.pop(context);
                },
                child: const Text(
                  "Already a member? Login now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
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
