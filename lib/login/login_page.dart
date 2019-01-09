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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: <Widget>[
            const FlutterLogo(size: 64),
            const SizedBox(height: 48),
            Theme(
              data: theme.copyWith(
                primaryColor: Colors.white,
                hintColor: Colors.white70,
              ),
              child: TextField(
                style: theme.textTheme.subhead.copyWith(color: Colors.white),
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'E-mail',
                ),
                controller: emailController,
              ),
            ),
            const SizedBox(height: 16),
            Theme(
              data: theme.copyWith(
                primaryColor: Colors.white,
                hintColor: Colors.white70,
              ),
              child: TextField(
                style: theme.textTheme.subhead.copyWith(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Password',
                  suffixIcon: GestureDetector(
                    child: Center(
                      widthFactor: double.minPositive,
                      child: Text(
                        'Forgot?',
                        style: theme.textTheme.body1.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    onTap: () {
                      debugPrint('Forgot password');
                    },
                  ),
                ),
                controller: passwordController,
              ),
            ),
            const SizedBox(height: 24),
            RaisedButton(
              textColor: Colors.white,
              child: const Text('Log in'),
              onPressed: () {
                debugPrint('Log in');
              },
            ),
            const SizedBox(height: 128),
            FlatButton(
              textColor: Colors.white,
              child: const Text('Sign up'),
              onPressed: () {
                debugPrint('Sign up');
              },
            )
          ],
        ),
      ),
    );
  }
}
