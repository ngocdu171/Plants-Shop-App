import 'package:flutter/material.dart';

List<Hotplants> hotPlants = [
  Hotplants(url: "assets/images/Aloe Vera.jpg", name: "Aloe Vera", price: "10"),
  Hotplants(url: "assets/images/Fern Plant.jpg", name: "Fern Plant", price: "20"),
  Hotplants(url: "assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.jpg", name: "Ficus Lyrata", price: "30"),
  Hotplants(url: "assets/images/Jade-Plant.jpg", name: "Jade-Plant", price: "10"),
  Hotplants(url: "assets/images/palm.jpg", name: "palm", price: "20"),
  Hotplants(url: "assets/images/snapdragon_Outdoor.jpg", name: "snapdragon_Outdoor", price: "30"),
];

class Hotplants {
  String url;
  String name;
  String price;

  Hotplants({required this.url, required this.name, required this.price});
}

class Recommend extends StatelessWidget {
  const Recommend({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final urlplant = hotPlants.map((e) => e.url).toString();
    // final nameplant = hotPlants.map((e) => e.name).toString();
    // final priceplpant = hotPlants.map((e) => e.price).toString();

    return Container(
      padding: const EdgeInsets.all(10),
      height: 400,
      child: Column(
        children: <Widget>[

          GridView.builder(
          itemCount: hotPlants.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 200,
              height: 500,
              child: Column(
                children: [
                  Image.asset(hotPlants[index].url, width: 90, height: 70,),
                  Text(hotPlants[index].name),
                  Text(hotPlants[index].price),
                ],
              ),
            );
          },
        ),

          SizedBox(
                    width: 100,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 9, 47, 16),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Start',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ) 
                  ),
        ],
        

      ),

    );

  }
}