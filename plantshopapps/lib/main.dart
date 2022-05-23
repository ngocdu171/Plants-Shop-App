import 'package:flutter/material.dart';

void main() {
  runApp(ShowAlertDialog());
}

class ShowAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plants Shop Application')),
        body: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
