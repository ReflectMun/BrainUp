import 'package:flutter/material.dart';

import '../common_widget/deck_title.dart';
import 'flashcard_category_widget.dart';

class UniversalDeckScreen extends StatelessWidget {
  final String deckName;

  const UniversalDeckScreen({
    super.key,
    required this.deckName,
  });

  final String categoryName = "한국사";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD04848),
        // 햄버거 메뉴 아이콘의 색은 AppBar의 foregroundColor 속성으로 지정
        foregroundColor: Colors.white,
      ),
      // endDrawer를 쓰면 오른쪽에서 나타나는 햄버거 메뉴 구현 가능
      // 단 이걸 사용하면 더 이상 AppBar에서 actions를 사용하면 안됨
      endDrawer: Drawer(
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 49
            ),
            child: CommonTitle(title: deckName),
          ),
          Container(
            width: 380,
            height: 519,
            decoration: BoxDecoration(
              color: const Color(0xFFDADADA).withOpacity(0.4),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  FlashcardCategoryWidget(categoryName: categoryName,),
                  const SizedBox(height: 6,),
                  FlashcardCategoryWidget(categoryName: "교양 심리학",),
                  const SizedBox(height: 6,),
                  FlashcardCategoryWidget(categoryName: "경제학 이론",),
                  const SizedBox(height: 6,),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_rounded,
                      size: 30,
                      color: Color(0xFFD04848),
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 91,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTapUp: (detail) {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 24,
                      ),
                      Text(
                        "홈",
                        style: TextStyle(
                          fontSize: 10,
                          height: 1.6
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTapUp: (detail) {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 24,
                      ),
                      Text(
                        "홈",
                        style: TextStyle(
                          fontSize: 10,
                          height: 1.6
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
