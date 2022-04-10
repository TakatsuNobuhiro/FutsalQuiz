import 'package:flutter/material.dart';
import 'package:practice_app/start_page.dart';

class Result extends StatelessWidget {
  final int numberOfCorrectAnswer;
  Result({required this.numberOfCorrectAnswer});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('１０問中$numberOfCorrectAnswer問正解しました',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Start(),
                      ),
                    );
                  },
                  child: Text("はじめに戻る"),
                )
              ],
            )));
  }
}
