import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.jpg"),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 9, 47, 16)
              ),
              children: [
                TextSpan(text: 'PLANT ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
                TextSpan(text: 'a ', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 161, 145, 0))),
                TextSpan(text: 'TREE \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
                TextSpan(text: 'and \n', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 161, 145, 0) )),
                TextSpan(text: 'Get ', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 161, 145, 0) )),
                TextSpan(text: 'OXYGEN \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
                TextSpan(text: 'For ', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 161, 145, 0) )),
                TextSpan(text: 'FREE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
              ]
              // children: [
              //   TextSpan(text: 'PLANT ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
              //   TextSpan(text: 'a '),
              //   TextSpan(text: 'TREE \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
              //   TextSpan(text: 'so that \n'),
              //   TextSpan(text: 'NEXT GENERATION ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
              //   TextSpan(text: 'Get '),
              //   TextSpan(text: 'AIR \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
              //   TextSpan(text: 'For '),
              //   TextSpan(text: 'FREE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
              // ]
            ),
          ),
          SizedBox(
            width: 100,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 47, 16),
                ),
                onPressed: () {},
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2,
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/icons/icons8-arrow-64.png",
                        width: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
          ),
        ],
      ),
    );
  }
}