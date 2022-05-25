import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text('Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 27, 66, 29)
                    ),),
                ],
              ),
              Column(
                children: const [
                  Text('Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 27, 66, 29)
                    ),),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text('1 1'),
                  Text('1 2'),
                  Text('1 3'),
                  Text('1 4'),
                ],
              ),
              Column(
                children: const [
                  Text('Kiem tra don hang'),
                  Text('Giao hang tan noi'),
                  Text('Bao mat khach hang'),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/logo.jpg", height: 64,),
                  const Text('1 2'),
                  const Text('Copyright 2022 DuPham')
                ],
              ),
              Column(
                children: const [
                  Text('Contact',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 27, 66, 29)
                    ),
                  ),
                  Text('Mon - Sat: 9:00 - 19:00'),
                  Text('+358 45 251 8653'),
                  Text('ngocdu171@gmail.com'),
                ],
              )
            ],
          )
        ]
        ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center
      //   children: [
      //     Column(
      //       children: const [
      //         Text('Vi tri'),
      //         Text('1 1'),
      //         Text('1 2'),
      //         Text('1 3'),
      //       ],
      //     ),
      //     Column(
      //       children: const [
      //         Text('Chinh sach'),
      //         Text('2 1'),
      //         Text('2 2'),
      //         Text('2 3'),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}