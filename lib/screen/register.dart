import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register Screen',
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Text(
              'Register details',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                '/login',
              );
            },
            child: Text(
              'Submit',
            ),
          ),
        ],
      ),
    );
  }
}
