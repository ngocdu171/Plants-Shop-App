import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.jpg"),
          const Text("Plant a tree so that next generation can get air for free",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0)
            ),
          ),
          SizedBox(
            width: 90,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green.shade900,
                ),
                onPressed: () {},
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
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