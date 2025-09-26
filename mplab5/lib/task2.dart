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
          title: const Text('CrossAxisAlignment'),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Icon(Icons.star, size: 50,),
            Icon(Icons.star, size: 50,),
            Icon(Icons.star, size: 50,),
            Icon(Icons.star, size: 50,),
            Icon(Icons.star, size: 50,),
          ],
        )
      ),
    );
  }
}
