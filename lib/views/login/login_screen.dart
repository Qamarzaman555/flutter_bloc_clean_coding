import 'package:flutter/material.dart';

import '../../config/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.homeScreen);
          },
          child: const Icon(Icons.home),
        ),
      ),
    );
  }
}
