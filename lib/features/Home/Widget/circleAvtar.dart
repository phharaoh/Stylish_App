import 'package:flutter/material.dart';

class Circleavtar extends StatelessWidget {
  const Circleavtar({super.key, required this.imagePath, required this.label});
  final String imagePath;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              imagePath,
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}
