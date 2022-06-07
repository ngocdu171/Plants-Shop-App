import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  const Recommend({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/Trifasciata Futura Superba.jpg", width: 70,),
                      const Text("Plant 01"),
                      const Text("10 euro")
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/queen-annes-lace_Outdoor.jpg", width: 70,),
                      const Text("Plant 02"),
                      const Text("20 euro")
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/Spider-Cactus_Office.jpg", width: 70,),
                      const Text("Plant 03"),
                      const Text("30 euro")
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/Trifasciata Futura Superba.jpg", width: 70,),
                      const Text("Plant 01"),
                      const Text("10 euro")
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/queen-annes-lace_Outdoor.jpg", width: 70,),
                      const Text("Plant 02"),
                      const Text("20 euro")
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/Spider-Cactus_Office.jpg", width: 70,),
                      const Text("Plant 03"),
                      const Text("30 euro")
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150,
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
                        'Load more',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/icons/icons8-arrow-64.png",
                      width: 25,
                      color: Colors.white,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}