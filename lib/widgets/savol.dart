import 'package:flutter/material.dart';

class Savol extends StatelessWidget {
  final String savol;
  final List<Map<String, dynamic>> javoblar;
  final Function nextQuiz;

  Savol(this.savol, this.javoblar, this.nextQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            savol,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () => nextQuiz(javoblar[0]["togrimi"]),
              child: Text(
                javoblar[0]["matn"],
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              onPressed: () => nextQuiz(javoblar[1]["togrimi"]),
              child: Text(javoblar[1]["matn"], style: TextStyle(fontSize: 20))),
          ElevatedButton(
              onPressed: () => nextQuiz(javoblar[2]["togrimi"]),
              child: Text(javoblar[2]["matn"], style: TextStyle(fontSize: 20))),
          ElevatedButton(
              onPressed: () => nextQuiz(javoblar[3]["togrimi"]),
              child: Text(javoblar[3]["matn"], style: TextStyle(fontSize: 20))),
        ]);
  }
}
