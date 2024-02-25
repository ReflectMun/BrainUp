import 'package:brain_up/universal_flashcard/universal_studying/universal_studying_flipcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../common_widget/deck_title.dart';

class UniversalStudyingScreen extends StatelessWidget {
  UniversalStudyingScreen({super.key});

  final List<UniversalStudyingFlipCardWidget> _cards = [
    UniversalStudyingFlipCardWidget(
      question: "d",
      answer: "g",
    ),
    UniversalStudyingFlipCardWidget(
      question: "dd",
      answer: "gg",
    ),
    UniversalStudyingFlipCardWidget(
      question: "ddd",
      answer: "ggg",
    ),
  ];

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
                  child: CardSwiper(
                    cardsCount: _cards.length,
                    cardBuilder: (bc, i, x, y){
                      return _cards[i];
                    },
                    maxAngle: 0,
                    numberOfCardsDisplayed: _cards.length >= 3 ? 3 : _cards.length,
                    allowedSwipeDirection: const AllowedSwipeDirection.only(
                      up: false,
                      down: false,
                      right: true,
                      left: true
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 55,
                      vertical: 80
                    ),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/arrow_left_square_contained.png",
                        width: 24,
                      ),
                      const Text(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/logout_icon.png",
                        width: 24,
                      ),
                      const Text(
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
