import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: NameProvider(),
      ),
    ),
  ));
}

// Parent Widget
class NameProvider extends StatelessWidget {
  const NameProvider({super.key});

  final String _name = "Kamronbek";

  @override
  Widget build(BuildContext context) {
    return Greeting(name: _name);
  }
}

// Child Widget
class Greeting extends StatelessWidget {
  final String name;

  const Greeting({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, $name',
      style: const TextStyle(fontSize: 24),
    );
  }
}
