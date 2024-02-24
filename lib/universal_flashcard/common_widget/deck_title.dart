import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(
            color: Color(0xFFD04848),
            fontSize: 50,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.1,
            height: 0.4
        ),
      ),
    );
  }
}