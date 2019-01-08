import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'E-mail',
                contentPadding: const EdgeInsets.all(16),
              ),
              controller: emailController,
            ),
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                contentPadding: const EdgeInsets.all(16),
              ),
              controller: passwordController,
            )
          ],
        ),
      ),
    );
  }
}
