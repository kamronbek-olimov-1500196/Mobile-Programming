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
          title: const Text('Container Example'),
        ),
        body: Center(
          child: Container(
            margin:  const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(16.0),
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.home),
          ),
        ),
      ),
    );
  }
}
