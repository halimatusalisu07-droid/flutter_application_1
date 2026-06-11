import 'package:flutter/material.dart';

final AuthService authService = AuthService();

class AuthService {
  // Simulated async account creation. Replace with real implementation.
  Future<void> createAccount(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email.isEmpty || password.isEmpty) {
      throw Exception('Email and password must not be empty');
    }
    if (!email.contains('@')) {
      throw Exception('Invalid email address');
    }
    if (password.length < 6) {
      throw Exception('Password must be at least 6 characters');
    }
    // Success: in a real app, call backend or Firebase here.
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void register() async {
    final email = emailController.text.trim();
    final password = passwordController.text;
    try {
      await authService.createAccount(email, password);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Account created successfully')),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration failed: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Center(child: Text("Register Page")),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
