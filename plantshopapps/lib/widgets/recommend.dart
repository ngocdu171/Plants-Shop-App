import 'package:flutter/material.dart';
// import 'package:plantshopapps/data/hotList.dart';

class Hotplants {
  final String url;
  final String name;
  final String price;

  const Hotplants({
    required this.url,
    required this.name,
    required this.price
  });
}

List<Hotplants> hotPlants = [
  const Hotplants(url: "assets/images/Aloe Vera.png", name: "Aloe Vera", price: "10"),
  const Hotplants(url: "assets/images/Fern Plant.png", name: "Fern Plant", price: "20"),
  const Hotplants(url: "assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.png", name: "Ficus Lyrata", price: "30"),
  const Hotplants(url: "assets/images/Jade-Plant.png", name: "Jade-Plant", price: "10"),
  const Hotplants(url: "assets/images/palm.png", name: "palm", price: "20"),
  const Hotplants(url: "assets/images/snapdragon_Outdoor.png", name: "snapdragon_Outdoor", price: "30"),
];

class Recommend extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1300,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Recommend', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold
          ),),
          Container(
            height: 600,
            child: Column(
              children: hotPlants.map((e) => Card(
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage(e.url),
                              fit: BoxFit.fitHeight
                            )
                          ),
                        ),
                        Text(e.name),
                        Text(e.price)
                      ],
                    ),
                  )
                ).toList(),
              ),
            )
        
        ],
        

      ),

    );

  }
}