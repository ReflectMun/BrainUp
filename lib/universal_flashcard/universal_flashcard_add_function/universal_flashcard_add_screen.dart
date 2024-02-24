import 'package:flutter/material.dart';

import '../common_widget/deck_title.dart';

class AddUniversalFlashcardScreen extends StatelessWidget {
  final String categoryName;

  const AddUniversalFlashcardScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD04848),
        foregroundColor: Colors.white,
      ),
      endDrawer: Drawer(),
      body: Column(
        children: [
          Padding( // 제목
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 49
            ),
            child: CommonTitle(title: categoryName,),
          ),
          Padding(
            // 플래시 카드 추가하는 위젯
            padding: const EdgeInsets.all(30),
            child: Container(
              width: 350,
              height: 376.77,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(7, 7)
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    // 위젯 윗부분 색띠
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD04848),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                      ),
                    ),
                  ),
                  Expanded(
                    // 질문, 답변 입력하는 부분
                    child: Padding(
                      // 질문 입력
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            // Q 아이콘
                            "Q.",
                            style: TextStyle(
                              color: Color(0xFFD04848),
                              fontSize: 50,
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.1,
                            ),
                          ),
                          Expanded(
                            // 질문 텍스트 필드
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const TextField(
                                minLines: null,
                                maxLines: null,
                                expands: true,
                                decoration: InputDecoration(
                                  hintText: "질문을 입력하세요",
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider( // 구분선
                    height: 1,
                    indent: 12,
                    endIndent: 12,
                  ),
                  Expanded(
                    // 답변 입력하는 부분
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // A. 아이콘
                          const Text(
                            "A.",
                            style: TextStyle(
                              color: Color(0xFFD04848),
                              fontSize: 50,
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.1,
                            ),
                          ),
                          Expanded(
                            // 답변 텍스트 필드
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const TextField(
                                minLines: null,
                                maxLines: null,
                                expands: true,
                                decoration: InputDecoration(
                                  hintText: "답변을 입력하세요",
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            // 등록하기 버튼 영역
            child: Center(
              child: GestureDetector(
                onTapUp: (detail) { print("등록하기"); },
                child: Container(
                  height: 45,
                  width: 158,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD04848),
                    borderRadius: BorderRadius.circular(42),
                  ),
                  child: const Center(
                    child: Text(
                      "등록하기",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                      ),
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
                      ),
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
                        Icons.refresh_rounded,
                        size: 24,
                      ),
                      Text(
                        "뒤로가기",
                        style: TextStyle(
                          fontSize: 10,
                          height: 1.6
                        ),
                      ),
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
