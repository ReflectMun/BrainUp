import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../common_widget/deck_title.dart';

class UniversalTestScreen extends StatelessWidget {
  UniversalTestScreen({super.key});

  final String question = "백제, 고구려, 신라 삼국을 통일하게 만든 주인공은?";
  final String answer = "문무왕";

  final int current = 40;
  final int total = 50;
  final String timer = "20:21";

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
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 380,
                height: 519,
                decoration: BoxDecoration(
                  color: const Color(0xFFDADADA).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xFFD04848),
                            width: 3
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "맞힌 개수 : $current/$total",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.3
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "정답률 : ${(current/total * 100).toInt()}%",
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.05
                            ),
                          ),
                          Text(
                            "소요 시간 : $timer",
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.05
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
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
                      ),
                      const SizedBox(height: 20,),
                      Container(
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
                            answer,
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
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/incorrect_icon.png",
                            width: 40,
                          ),
                          Image.asset(
                            "assets/correct_icon.png",
                            width: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
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
