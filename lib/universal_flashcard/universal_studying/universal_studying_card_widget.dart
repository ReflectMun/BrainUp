import 'package:flutter/material.dart';

class UniversalStudyingCardWidget extends StatelessWidget {
  final String content;

  const UniversalStudyingCardWidget({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 360,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: const Border(
            top: BorderSide(
                color: Color(0xFFD04848),
                width: 15
            ),
            left: BorderSide(
                color: Color(0xFFD04848),
                width: 3
            ),
            right: BorderSide(
                color: Color(0xFFD04848),
                width: 3
            ),
            bottom: BorderSide(
                color: Color(0xFFD04848),
                width: 3
            ),
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text(
            content,
            style: const TextStyle(
                fontSize: 20,
                letterSpacing: 0.1,
                fontWeight: FontWeight.w400,
                height: 1.2
            ),
          ),
        ),
      ),
    );
  }
}