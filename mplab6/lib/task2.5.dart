import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ColorBoxApp(),
  ));
}

class ColorBoxApp extends StatefulWidget {
  const ColorBoxApp({Key? key}) : super(key: key);

  @override
  State<ColorBoxApp> createState() => _ColorBoxAppState();
}

class _ColorBoxAppState extends State<ColorBoxApp> {
  Color _boxColor = Colors.red;

  void _changeColor(Color newColor) {
    setState(() {
      _boxColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color Box')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 200,
              color: _boxColor,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.red),
                  child: const Text('Red'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.green),
                  child: const Text('Green'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.blue),
                  child: const Text('Blue'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
