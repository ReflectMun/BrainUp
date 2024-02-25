import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UniversalTestAnswerWidget extends StatefulWidget {
  const UniversalTestAnswerWidget({
    super.key,
    required this.answer,
  });

  final String answer;

  @override
  State<UniversalTestAnswerWidget> createState() => _UniversalTestAnswerWidgetState();
}

class _UniversalTestAnswerWidgetState extends State<UniversalTestAnswerWidget> {
  bool _isAnswerTapped = false;

  void _tappedUpAnswerWidget(TapUpDetails detail){
    setState(() {
      _isAnswerTapped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: _tappedUpAnswerWidget,
      child: Container(
        width: 320,
        height: 137.97,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: const Color(0xFFD04848),
              width: 4
          ),
        ),
        child: Center(
          child: AutoSizeText(
            _isAnswerTapped ? widget.answer : "",
            style: const TextStyle(
                color: Color(0xFFD04848),
                fontSize: 50,
                fontWeight: FontWeight.w400
            ),
            minFontSize: 16,
            maxFontSize: 50,
            maxLines: 10,
            overflowReplacement: const Text(
              "정답이 너무 길어요!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
        ),
      ),
    );
  }
}