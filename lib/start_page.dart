import 'package:flutter/material.dart';
import 'package:practice_app/question_page.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('クイズアプリ')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: StartPage(),
      ),
    ));
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              this.context,
              MaterialPageRoute(
                builder: (context) => Question(),
              ),
            );
          },
          child: Text("はじめる"),
        ),
      ),
    );
  }
}
