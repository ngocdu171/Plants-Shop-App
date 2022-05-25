import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center
        children: [
          Column(
            children: const [
              Text('Vi tri'),
              Text('1 1'),
              Text('1 2'),
              Text('1 3'),
            ],
          ),
          Column(
            children: const [
              Text('Chinh sach'),
              Text('2 1'),
              Text('2 2'),
              Text('2 3'),
            ],
          )
        ],
      ),
    );
  }
}