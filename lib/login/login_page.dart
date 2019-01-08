import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        color: Colors.blue[400],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Login',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
              ),
            )
          ],
        ),
      ),
    );
  }
}
