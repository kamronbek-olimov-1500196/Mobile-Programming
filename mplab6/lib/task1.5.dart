import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Username form',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Username form'),
        ),
        body: const Center(
          child: UserNameForm(),
        ),
      ),
    );
  }
}

class UserNameForm extends StatefulWidget {
  const UserNameForm({Key? key}) : super(key: key);

  @override
  State<UserNameForm> createState() => _UserNameFormState();
}

class _UserNameFormState extends State<UserNameForm> {
  String _userName = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _userName = value;
              });
            },
          ),
          const SizedBox(height: 20),
          Text(
            'Current username: $_userName',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
