import 'package:flutter/material.dart';

import '../common_widget/deck_title.dart';
import 'flashcard_widget.dart';

class UniversalCategoryScreen extends StatelessWidget {
  final String categoryName;

  const UniversalCategoryScreen({
    super.key,
    required this.categoryName
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD04848),
        // 햄버거 메뉴 아이콘의 색은 AppBar의 foregroundColor 속성으로 지정
        foregroundColor: Colors.white,
      ),
      endDrawer: Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 49
            ),
            child: CommonTitle(title: categoryName,),
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
                  FlashcardWidget(
                    question: "백제, 고구려, 신라 삼국을 통일하게 만든 주인공은?",
                    answer: "문무왕(30대 신라왕)",
                  ),
                  SizedBox(height: 6,),
                  FlashcardWidget(
                    question: "'해동성국'이라 불리며 통일신라와 함께 남북국 시대를 연 나라는 어디일까요?",
                    answer: "발해",
                  ),
                  SizedBox(height: 6,),
                  FlashcardWidget(
                    question: "유네스코 세계 유산에 등재된 것으로 고려 시대 때 만들어진 세계 최고 금속활자본 이름은?",
                    answer: "직지심체요절",
                  ),
                  SizedBox(height: 6,),
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
                        Icons.keyboard_double_arrow_left_rounded,
                        size: 24,
                      ),
                      Text(
                        "이전으로",
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
                        Icons.exit_to_app_rounded,
                        size: 24,
                      ),
                      Text(
                        "학습종료",
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


