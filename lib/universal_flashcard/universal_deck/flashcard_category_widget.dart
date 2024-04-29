import 'package:flutter/material.dart';

class FlashcardCategoryWidget extends StatefulWidget {
  final String categoryName;

  const FlashcardCategoryWidget({
    super.key, required this.categoryName
  });

  @override
  State<FlashcardCategoryWidget> createState() => _FlashcardCategoryWidgetState();
}

class _FlashcardCategoryWidgetState extends State<FlashcardCategoryWidget> {
  bool _isFavorite = false;

  void _openFlashCard(TapUpDetails details){
    print("${widget.categoryName} 눌렀다 똈음");
  }

  void _clickFavoriteIcon(){
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: _openFlashCard,
      child: Container(
        height: 42.85,
        width: 334,
        decoration: BoxDecoration(
            color: const Color(0xFFD04848),
            borderRadius: BorderRadius.circular(25)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Center(
                child: Text(
                  widget.categoryName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // 즐겨찾기 아이콘
            Expanded(
              flex: 2,
              child: IconButton(
                onPressed: _clickFavoriteIcon,
                icon: Icon(
                  _isFavorite ? Icons.star_rounded : Icons.star_border_rounded,
                  size: 23,
                  color: const Color(0xFFF6ECA9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
