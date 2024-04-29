import 'package:brain_up/universal_flashcard/universal_category/universal_category_screen.dart';
import 'package:brain_up/universal_flashcard/universal_deck/universal_deck_screen.dart';
import 'package:brain_up/universal_flashcard/universal_flashcard_add_function/universal_flashcard_add_screen.dart';
import 'package:brain_up/universal_flashcard/universal_studying/universal_studying_screen.dart';
import 'package:brain_up/universal_flashcard/universal_test/universal_test_screen.dart';
import 'package:brain_up/universal_flashcard/universal_test_result/universal_result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UniversalResultScreen(
      ),
    );
  }
}

