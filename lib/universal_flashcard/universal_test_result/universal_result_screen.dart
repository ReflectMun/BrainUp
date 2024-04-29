import 'package:brain_up/universal_flashcard/universal_category/flashcard_widget.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../common_widget/deck_title.dart';

class UniversalResultScreen extends StatelessWidget {
  UniversalResultScreen({super.key});

  final List _cards = [
    FlashcardWidget(question: "백제, 고구려, 신라 삼국을 통일하게 만든 주인공은?", answer: "문무왕(30대 신라왕)"),
    FlashcardWidget(question: "'해동성국'이라 불리며 통일신라와 함께 남북국 시대를 연 나라는 어디일까요?", answer: "발해"),
    FlashcardWidget(question: "유네스코 세계 유산에 등재된 것으로 고려 시대 때 만들어진 세계 최고 금속활자본 이름은?", answer: "직지심체요절"),
    FlashcardWidget(question: "유네스코 세계 유산에 등재된 것으로 고려 시대 때 만들어진 세계 최고 금속활자본 이름은?", answer: "직지심체요절"),
  ];

  final int total = 50;
  final int correct = 40;
  final String timer = "24:44";

  final Map<String, double> data = {
    "correct": 40,
    "incorrect": 10,
  };

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 49
            ),
            child: CommonTitle(title: "결과"),
          ),

          // 결과 통계창 시작
          Container(
            width: 372,
            height: 89,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 원형 그래프 시작
                PieChart(
                  dataMap: data,
                  colorList: const [
                    Color(0xFFD04848),
                    Color(0xFFC4C4C4),
                  ],
                  chartType: ChartType.ring,
                  ringStrokeWidth: 7,
                  centerWidget: Text(
                    "정답률 ${(correct / total * 100).toInt()}%",
                    style: const TextStyle(
                      fontSize: 10,
                      letterSpacing: 0.05,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  legendOptions: const LegendOptions(
                    showLegends: false,
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValues: false
                  ),
                ),
                // 원형 그래프 끝

                // 투명 디바이더
                VerticalDivider(
                  thickness: 1,
                  color: const Color(0x000000).withOpacity(0),
                ),

                // 총 문제수 표시 영역 시작
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "총문제",
                      style: TextStyle(
                        fontSize: 9,
                        letterSpacing: 0.05,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      "$total개",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.05
                      ),
                    )
                  ],
                ),
                // 총 문제수 표시 영역 끝

                VerticalDivider(
                  thickness: 1,
                  color: const Color(0x000000).withOpacity(0.3),
                  indent: 11,
                  endIndent: 11,
                ),

                // 틀린 문제수 표시 영역 시작
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "틀린문제",
                      style: TextStyle(
                          fontSize: 9,
                          letterSpacing: 0.05,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      "${total - correct}개",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.05
                      ),
                    )
                  ],
                ),
                // 틀린 문제수 표시 영역 끝

                VerticalDivider(
                  thickness: 1,
                  color: const Color(0x000000).withOpacity(0.3),
                  indent: 11,
                  endIndent: 11,
                ),

                // 테스트 소요 시간 표시 영역 시작
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "테스트 시간",
                      style: TextStyle(
                          fontSize: 9,
                          letterSpacing: 0.05,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      timer,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.05
                      ),
                    )
                  ],
                ),
                // 테스트 소요 시간 표시 영역 끝
              ],
            ),
          ),
          // 결과 통계창 끝

          const SizedBox(height: 15,),

          // 문제 리스트 시작
          Container(
            width: 380,
            height: 452,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFDADADA).withOpacity(0.4),
              borderRadius: BorderRadius.circular(25)
            ),
            child: ListView.separated(
              itemBuilder: (bc, i){
                return _cards[i];
              },
              separatorBuilder: (bc, i){
                return const SizedBox(height: 10,);
              },
              itemCount: _cards.length
            ),
          ),
          // 문제 리스트 끝
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
                        "assets/pen_icon.png",
                        width: 24,
                      ),
                      const Text(
                        "다시풀기",
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
