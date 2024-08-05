import 'package:flutter/material.dart';
import 'package:rhythmbox/theme.dart';

import '../widgets/custom_app_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Login',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username:', style: headerTextStyle()),
            const TextField(),
            const SizedBox(height: 8),
            Text('Password:', style: headerTextStyle()),
            const TextField(
              obscureText: true,
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('New User'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
