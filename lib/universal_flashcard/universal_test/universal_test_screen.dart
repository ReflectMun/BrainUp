import 'dart:ffi';

import 'package:brain_up/universal_flashcard/universal_test/universal_test_answer_widget.dart';
import 'package:brain_up/universal_flashcard/universal_test/universal_test_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../common_widget/deck_title.dart';

class UniversalTestScreen extends StatelessWidget {
  const UniversalTestScreen({super.key});

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
                      // 맞힌 개수 영역 시작
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
                      // 맞힌 개수 영역 끝

                      const SizedBox(height: 30,),

                      // 정답률, 소요시간 영역 시작
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 정답률 시작
                          Text(
                            "정답률 : ${(current/total * 100).toInt()}%",
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.05
                            ),
                          ),
                          // 정답률 시작

                          // 소요시간 시작
                          Text(
                            "소요 시간 : $timer",
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.05
                            ),
                          ),
                          // 소요시간 시작
                        ],
                      ),
                      // 정답률, 소요시간 영역 끝

                      const SizedBox(height: 10,),

                      // 문제 박스 영역 시작
                      UniversalTestQuestionWidget(question: question),
                      // 문제 박스 영역 끝

                      const SizedBox(height: 20,),

                      // 정답 박스 영역 시작
                      UniversalTestAnswerWidget(answer: answer),
                      // 정답 박스 영역 끝

                      const SizedBox(height: 20,),

                      // 틀림, 정답 버튼 영역
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTapUp: (detail) {
                              print("틀림");
                            },
                            child: Container(
                              width: 140,
                              height: 68,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/incorrect_icon.png",
                                  width: 40,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTapUp: (detail){
                              print("정답");
                            },
                            child: Container(
                              width: 140,
                              height: 68,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/correct_icon.png",
                                  width: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // 틀림, 정답 버튼 영역 끝
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
