import 'package:brain_up/universal_flashcard/universal_studying/universal_studying_flipcard.dart';
import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../common_widget/deck_title.dart';

class UniversalStudyingScreen extends StatelessWidget {
  const UniversalStudyingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD04848),
        foregroundColor: Colors.white,
      ),
      endDrawer: Drawer(
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 49
            ),
            child: CommonTitle(title: "학습하기"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.5),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFDADADA).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: UniversalStudyingFlipCardWidget(
                    question: "dd",
                    answer: "gg",
                  ),
                ),
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
