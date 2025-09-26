import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Widget'),
          ),
          // body: Column(
          //   children: <Widget>[
          //     Expanded(
          //       flex: 1,
          //     child: Container(height: 100, color: Colors.red)),
          //     Expanded(
          //       flex: 2,
          //       child: Container(height: 100, color: Colors.green),
          //     )
          //   ],
          // )
        body: Row(
          children: <Widget>[
            Container(width: 50, height: 50, color: Colors.red,),
            Spacer(),
            Container(width: 50, height: 50, color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
