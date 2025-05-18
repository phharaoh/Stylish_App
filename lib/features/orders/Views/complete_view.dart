import 'package:flutter/material.dart';

class CompleteView extends StatelessWidget {
  const CompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Complete Orders',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}