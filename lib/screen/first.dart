import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Splash Screen',
        ),
      ),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/login',
              );
            },
            child: Text(
              'LogIn',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/register',
              );
            },
            child: Text(
              'Register',
            ),
          ),
        ],
      ),
    );
  }
}
