import 'package:flutter/material.dart';

import './login/login_page.dart';

void main() => runApp(VKFlutter());

class VKFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VK Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(title: 'Home'),
      home: LoginPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}
