import 'package:flutter/material.dart';
import 'package:plantshopapps/data/catList.dart';

class Category extends StatelessWidget {

  // final allCatList = catList.map((e) {
  //   final name = e.name;
  // });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('Category', style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold
            ),),

            // before
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //     color: Color.fromARGB(255, 226, 255, 242),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.blueGrey,
            //         blurRadius: 10
            //       )
            //     ]
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: const [
            //           Text("Plant office", style: TextStyle(fontSize: 20),),
            //           Text("...........")
            //         ],
            //       ),
            //       Image.asset("assets/images/bamboo_Office.png", width: 150, height: 200,)
            //     ],
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //     color: Color.fromARGB(255, 250, 243, 230),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.blueGrey,
            //         blurRadius: 10
            //       )
            //     ]
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: const [
            //           Text("Plant indoor", style: TextStyle(fontSize: 20),),
            //           Text("...........")
            //         ],
            //       ),
            //       Image.asset("assets/images/Spider Plant.png", width: 150,)
            //     ],
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //     color: Color.fromARGB(255, 226, 255, 242),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.blueGrey,
            //         blurRadius: 10
            //       )
            //     ]
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: const [
            //           Text("Plant outdoor", style: TextStyle(fontSize: 20),),
            //           Text("...........")
            //         ],
            //       ),
            //       Image.asset("assets/images/peonies_Outdoor.png", width: 150,)
            //     ],
            //   ),
            // ),

            Container(
              height: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                  catList.map((e) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    color: const Color.fromARGB(255, 226, 255, 242),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(e.name,style: const TextStyle(
                              fontSize: 20
                            ),),
                            const Text("...........")
                          ],),
                          Container(
                            width: 150,
                            height: 150,
                            child: Image.asset(e.url, )
                          )
                      ]),
                    ),
                  ),
                  ).toList(),
                
              ),
            )
            
            // CategoryCard(
            //   255, 226, 255, 242,
            //   200,
            //   "Plant outdoor",
            //   "assets/images/peonies_Outdoor.png", 150, 150
            // ),
            // CategoryCard(
            //   255, 250, 243, 230,
            //   150,
            //   "Plant indoor",
            //   "assets/images/Spider Plant.png", 50 , 50
            // ),
            // CategoryCard(
            //   255, 226, 255, 242,
            //   150,
            //   "Plant office",
            //   "assets/images/bamboo_Office.png", 50, 50
            // ),

          ],
        ),

      // child: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: const <Widget>[
      //     CategoryCard(
      //       200,
      //       "Plant outdoor",
      //       "assets/images/peonies_Outdoor.jpg"
      //     ),
      //     CategoryCard(
      //       100,
      //       "Plant indoor",
      //       "assets/images/Spider Plant.jpg"
      //     ),
      //     CategoryCard(
      //       100,
      //       "Plant office",
      //       "assets/images/bamboo_Office.jpeg"
      //     ),
      //   ],
      // ),
    );
  }
}