import 'package:flutter/material.dart';

import '../common_widget/deck_title.dart';

class UniversalTestScreen extends StatelessWidget {
  UniversalTestScreen({super.key});

  final String question = "백제, 고구려, 신라 삼국을 통일하게 만든 주인공은?";
  final String answer = "문무왕";

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
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFDADADA).withOpacity(0.4)
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
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
                        "assets/logout.png",
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
