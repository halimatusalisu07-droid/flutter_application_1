import 'package:flutter/material.dart';
import 'profile.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text("Email:"),
          TextFormField(),
          Text("Password:"),
          TextFormField(obscureText: true),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            child: Text("Submit"),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: null, child: Text("Forget Password")),
          SizedBox(height: 30),
          ElevatedButton(onPressed: null, child: Text("Sign Up")),
        ],
      ),
    );
  }
}

class QuickConsult extends StatelessWidget {
  const QuickConsult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quick Consult")),
      body: Center(child: Text("Quick Consult Page")),
    );
  }
}
