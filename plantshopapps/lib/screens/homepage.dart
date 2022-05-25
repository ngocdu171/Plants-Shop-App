import 'package:flutter/material.dart';
import 'package:plantshopapps/widgets/footer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('HomePage'),
        backgroundColor: const Color.fromARGB(255, 20, 141, 18),
      ),
      body: ListView(
        children: const <Widget>[
          Text('Welcome', style: TextStyle(fontSize: 40),),
          Text('Mua theo danh muc', style: TextStyle(fontSize: 40),),
          Text('Cay pho bien', style: TextStyle(fontSize: 40),),
          Text('About us', style: TextStyle(fontSize: 40),),
          Text('Footer', style: TextStyle(fontSize: 40),),
          Footer(),
        ],
      ),
    );
  }
}