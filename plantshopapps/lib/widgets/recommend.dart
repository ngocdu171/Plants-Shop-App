import 'package:flutter/material.dart';

List<Hotplants> hotPlants = [
  Hotplants(url: 'assets/images/Aloe Vera.jpg', name: 'Aloe Vera', price: 10),
  Hotplants(url: 'assets/images/Fern Plant.jpg', name: 'Fern Plant', price: 20),
  Hotplants(url: 'assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.jpg', name: 'Ficus Lyrata', price: 30),
  Hotplants(url: 'assets/images/Jade-Plant.jpg', name: 'Jade-Plant', price: 10),
  Hotplants(url: 'assets/images/palm.jpg', name: 'palm', price: 20),
  Hotplants(url: 'assets/images/snapdragon_Outdoor.jpg', name: 'snapdragon_Outdoor', price: 30),
];

class Hotplants {
  String url;
  String name;
  int price;

  Hotplants({required this.url, required this.name, required this.price});
}

class Recommend extends StatelessWidget {
  const Recommend({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final plants = hotPlants.map((hotplant) {
      final name = hotplant.name.toString();

      return Text(name,
      style: const TextStyle(fontSize: 20, color: Colors.red),);
    }).toList();

    return Column(
      children: [
        const Text("asjdhgasdgasd"),
        const SizedBox(height: 4,),
        ...plants
      ],
    );

    // return Container(
    //   child: Column(
    //     children: <Widget>[
    //       Row(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(5),
    //             child: Container(
    //               child: Column(
    //                 children: <Widget>[
    //                   Image.asset("assets/images/Trifasciata Futura Superba.jpg", width: 70,),
    //                   const Text("Plant 01"),
    //                   const Text("10 euro")
    //                 ],
    //               ),
    //             ),
    //           ),

    //           Padding(
    //             padding: const EdgeInsets.all(5),
    //             child: Container(
    //               child: Column(
    //                 children: <Widget>[
    //                   Image.asset("assets/images/queen-annes-lace_Outdoor.jpg", width: 70,),
    //                   const Text("Plant 02"),
    //                   const Text("20 euro")
    //                 ],
    //               ),
    //             ),
    //           ),

    //           Padding(
    //             padding: const EdgeInsets.all(5),
    //             child: Container(
    //               child: Column(
    //                 children: <Widget>[
    //                   Image.asset("assets/images/Spider-Cactus_Office.jpg", width: 70,),
    //                   const Text("Plant 03"),
    //                   const Text("30 euro")
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),

    //       Row(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(5),
    //             child: Container(
    //               child: Column(
    //                 children: <Widget>[
    //                   Image.asset("assets/images/Trifasciata Futura Superba.jpg", width: 70,),
    //                   const Text("Plant 01"),
    //                   const Text("10 euro")
    //                 ],
    //               ),
    //             ),
    //           ),

    //           Padding(
    //             padding: const EdgeInsets.all(5),
    //             child: Container(
    //               child: Column(
    //                 children: <Widget>[
    //                   Image.asset("assets/images/queen-annes-lace_Outdoor.jpg", width: 70,),
    //                   const Text("Plant 02"),
    //                   const Text("20 euro")
    //                 ],
    //               ),
    //             ),
    //           ),

    //           Padding(
    //             padding: const EdgeInsets.all(5),
    //             child: Container(
    //               child: Column(
    //                 children: <Widget>[
    //                   Image.asset("assets/images/Spider-Cactus_Office.jpg", width: 70,),
    //                   const Text("Plant 03"),
    //                   const Text("30 euro")
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         width: 150,
    //         child: TextButton(
    //             style: TextButton.styleFrom(
    //               backgroundColor: const Color.fromARGB(255, 9, 47, 16),
    //             ),
    //             onPressed: () {},
    //             child: Row(
    //               children: [
    //                 const Padding(
    //                   padding: EdgeInsets.only(right: 5),
    //                   child: Text(
    //                     'Load more',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 20,
    //                       color: Color.fromARGB(255, 255, 255, 255),
    //                     ),
    //                   ),
    //                 ),
    //                 Image.asset(
    //                   "assets/icons/icons8-arrow-64.png",
    //                   width: 25,
    //                   color: Colors.white,
    //                 )
    //               ],
    //             )),
    //       ),
    //     ],
    //   ),
    // );

  }
}