import 'package:flutter/material.dart';
import 'package:practice_app/start_page.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Start();
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key? key, required this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 2;
//
//  void _incrementCounter() {
//    _counter = _counter * 2;
//    setState(() {});
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//        appBar: AppBar(
//          title: Text("フットサルクイズ"),
//          actions: [Icon(Icons.menu)],
//        ),
//        body: Container(
//            width: double.infinity,
//            child:
//                TextField()) // This trailing comma makes auto-formatting nicer for build methods.
//        );
//  }
//}
