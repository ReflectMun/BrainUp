import 'package:brain_up/universal_flashcard/universal_studying/universal_studying_card_widget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class UniversalStudyingFlipCardWidget extends StatefulWidget {
  final String question;
  final String answer;

  const UniversalStudyingFlipCardWidget({
    super.key,
    required this.question,
    required this.answer
  });

  @override
  State<UniversalStudyingFlipCardWidget> createState() => _UniversalStudyingFlipCardWidgetState();
}

class _UniversalStudyingFlipCardWidgetState extends State<UniversalStudyingFlipCardWidget> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: UniversalStudyingCardWidget(content: widget.question,),
        back: UniversalStudyingCardWidget(content: widget.answer,)
    );
  }
}
