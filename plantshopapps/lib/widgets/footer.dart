import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  final shopsList = [
    "Shop_01, Helsinki",
    "Shop_02, Helsinki",
    "Shop_03, Turku",
    "Shop_04, Oulu",
  ];

  final policyList = [
    "Kiem tra don hang",
    "Giao hang tan noi",
    "Bao mat khach hang"
  ];

  final contactList = [
    "Mon - Sat: 9:00 - 19:00",
    "+358 45 251 8653",
    "t9phng00@students.oamk.fi",
    "ngocdu171@gmail.com"
  ];

  final iconSocialList = [
    "assets/icons/icons8-facebook-64 (1).png",
    "assets/icons/icons8-instagram-64.png",
    "assets/icons/icons8-twitter-64.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(24, 26, 125, 82),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color.fromARGB(255, 226, 255, 242)
          )
        ]
      ),
      height: 450,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text('Location',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 27, 66, 29)
                      ),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: shopsList.map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(e),
                      )
                    ).toList(),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text('Policy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 27, 66, 29)
                      ),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: policyList.map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(e),
                      )
                    ).toList(),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png", height: 64,),
                    Row(
                      children: iconSocialList.map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(top: 20,
                          bottom: 20),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child:
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Image.asset(e, height: 20, color:const Color.fromARGB(255, 27, 66, 29),)
                            ),
                          ),
                        )
                      ).toList(),
                    ),
                  const Text('Copyright 2022 @ DuPham')
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text('Contact',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 27, 66, 29)
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: contactList.map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(e),
                      )
                    ).toList(),
                  )
                ],
              )
            ],
          )
        ]
      ),
    );
  }
}