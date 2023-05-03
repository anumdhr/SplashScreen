import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen',
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Text(
              'Login Screen',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/home',
              );
            },
            child: Text(
              'Login',
            ),
          ),
        ],
      ),
    );
  }
}
