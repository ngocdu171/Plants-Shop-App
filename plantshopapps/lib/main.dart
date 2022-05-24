import 'package:flutter/material.dart';
import './screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Shop Application',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 4, 4, 4),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color.fromARGB(255, 0, 0, 0))
      ),
      home: const HomePage(),
    );
  }
}
