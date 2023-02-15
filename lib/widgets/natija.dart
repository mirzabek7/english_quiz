import 'package:flutter/material.dart';

class Natija extends StatelessWidget {
  final int uzunlik;
  final int natija;
  final Function() retry;

  Natija(this.natija, this.uzunlik, this.retry);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Natija : $natija/$uzunlik",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          ElevatedButton.icon(
              onPressed: retry,
              icon: Icon(Icons.restart_alt),
              label: Text("Restart")),
        ],
      ),
    );
  }
}
