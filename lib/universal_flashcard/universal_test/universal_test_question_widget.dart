import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UniversalTestQuestionWidget extends StatelessWidget {
  const UniversalTestQuestionWidget({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 137.97,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFD04848),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: AutoSizeText(
          question,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w400
          ),
          minFontSize: 16,
          maxFontSize: 50,
          maxLines: 10,
          overflowReplacement: const Text(
            "문제가 너무 길어요!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
      ),
    );
  }
}