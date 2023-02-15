import 'package:flutter/material.dart';
import './widgets/savol.dart';
import './widgets/natija.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> savollarVaJavoblar = [
    {
      "savol": "1. Where  ___  you from?",
      "javoblar": [
        {"matn": "is", "togrimi": false},
        {"matn": "are", "togrimi": true},
        {"matn": "aren't", "togrimi": false},
        {"matn": "-", "togrimi": false},
      ]
    },
    {
      "savol": "2. He  _______  like play piano",
      "javoblar": [
        {"matn": "do", "togrimi": false},
        {"matn": "does", "togrimi": false},
        {"matn": "doesn't", "togrimi": true},
        {"matn": "more", "togrimi": false},
      ]
    },
    {
      "savol": "3. I brush my teeth  __  the morning",
      "javoblar": [
        {"matn": "in", "togrimi": true},
        {"matn": "on", "togrimi": false},
        {"matn": "at", "togrimi": false},
        {"matn": "of", "togrimi": false},
      ]
    },
    {
      "savol": "4. What color  __  you like?",
      "javoblar": [
        {"matn": "does", "togrimi": false},
        {"matn": "on", "togrimi": false},
        {"matn": "my", "togrimi": false},
        {"matn": "do", "togrimi": true},
      ]
    },
    {
      "savol": "5. There  ___  two balls",
      "javoblar": [
        {"matn": "are", "togrimi": true},
        {"matn": "is", "togrimi": false},
        {"matn": "in", "togrimi": false},
        {"matn": "do", "togrimi": false},
      ]
    }
  ];

  int numberOfAnswer = 0;
  int result = 0;
  void nextQuestion(bool togrimi) {
    setState(() {
      numberOfAnswer++;
      if (togrimi) {
        result++;
      }
    });
  }

  void restartQuiz() {
    setState(() {
      numberOfAnswer = 0;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ingliz tili Quiz"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: numberOfAnswer < savollarVaJavoblar.length
              ? Savol(savollarVaJavoblar[numberOfAnswer]["savol"],
                  savollarVaJavoblar[numberOfAnswer]["javoblar"], nextQuestion)
              : Natija(result, savollarVaJavoblar.length, restartQuiz),
        ),
      ),
    );
  }
}
