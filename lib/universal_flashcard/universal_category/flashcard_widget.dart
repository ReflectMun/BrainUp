import 'package:flutter/material.dart';

class FlashcardWidget extends StatefulWidget {
  final String question;
  final String answer;

  const FlashcardWidget({
    super.key,
    required this.question,
    required this.answer
  });

  @override
  State<FlashcardWidget> createState() => _FlashcardWidgetState();
}

class _FlashcardWidgetState extends State<FlashcardWidget> {
  bool _isBookmarked = false;

  void _clickBookmark(){
    setState(() {
      _isBookmarked = !_isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: const Border(
                left: BorderSide(
                    color: Color(0xFFD04848),
                    width: 14
                )
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 13,
                    child: Text(widget.question),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      onPressed: _clickBookmark,
                      icon: Icon(
                        _isBookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                        color: const Color(0xFFD04848),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              indent: 11,
              endIndent: 11,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(widget.answer),
            )
          ],
        ),
      ),
    );
  }
}
