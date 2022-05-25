import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text('HomePage'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: ListView(
        children: <Widget>[
          Text('Trang chu'),
          Text('Cua hang'),
          Text('Gioi thieu'),
          Text('Lien he'),
          Text('Bai viet'),
        ],
      ),
    );
  }
}