import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:practice_app/result.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  List<List> questions = [
    [
      '問題文(サンプル)',
      3,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
    [
      '問題文(サンプル)',
      2,
      "https://futsal.tech/wp-content/uploads/2021/08/65e58b34b5a56160147ce1569744fce0.jpeg"
    ],
    [
      '問題文(サンプル)',
      1,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
    [
      '問題文(サンプル)',
      3,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
    [
      '問題文(サンプル)',
      4,
      "https://futsal.tech/wp-content/uploads/2021/09/48853abb1e9afec0fd999bffd420a64c.jpeg"
    ],
    [
      '問題文(サンプル)',
      1,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
    [
      '問題文(サンプル)',
      2,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
    [
      '問題文(サンプル)',
      3,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
    [
      '問題文(サンプル)',
      4,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
    [
      '問題文(サンプル)',
      2,
      "https://futsal.tech/wp-content/uploads/2021/08/0501e3609600972a5b7085fdb03d8784.jpeg"
    ],
  ];
  int questionNumber = 1;
  int numberOfCorrectAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('第$questionNumber問'),
              backgroundColor: Colors.blue,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(questions[questionNumber - 1][0],
                          style: TextStyle(
                            fontSize: 30.0,
                          ))),
                ),
                Image(image: NetworkImage(questions[questionNumber - 1][2])),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        int correctAnswer = questions[questionNumber - 1][1];
                        if (correctAnswer == 1) {
                          numberOfCorrectAnswer++;
                        }

                        if (questionNumber < questions.length) {
                          setState(() {
                            questionNumber++;
                          });
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Result(
                                numberOfCorrectAnswer: numberOfCorrectAnswer,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        int correctAnswer = questions[questionNumber - 1][1];
                        if (correctAnswer == 2) {
                          numberOfCorrectAnswer++;
                        }

                        if (questionNumber < questions.length) {
                          setState(() {
                            questionNumber++;
                          });
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Result(
                                numberOfCorrectAnswer: numberOfCorrectAnswer,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        int correctAnswer = questions[questionNumber - 1][1];
                        if (correctAnswer == 3) {
                          numberOfCorrectAnswer++;
                        }

                        if (questionNumber < questions.length) {
                          setState(() {
                            questionNumber++;
                          });
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Result(
                                numberOfCorrectAnswer: numberOfCorrectAnswer,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        int correctAnswer = questions[questionNumber - 1][1];
                        if (correctAnswer == 4) {
                          numberOfCorrectAnswer++;
                        }

                        if (questionNumber < questions.length) {
                          setState(() {
                            questionNumber++;
                          });
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Result(
                                numberOfCorrectAnswer: numberOfCorrectAnswer,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
