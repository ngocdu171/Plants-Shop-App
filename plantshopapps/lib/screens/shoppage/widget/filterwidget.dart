import 'package:flutter/material.dart';
import 'package:plantshopapps/data/plants.dart';

class SaleList {
  final String url;
  final String name;
  final String price;

  const SaleList ({
    required this.url,
    required this.name,
    required this.price
  });
}

List<SaleList> saleList = [
  const SaleList(url: "assets/images/Aloe Vera.png", name: "Aloe Vera", price: "10"),
  const SaleList(url: "assets/images/bamboo_Office.png", name: "Bamboo", price: "10"),
  const SaleList(url: "assets/images/Fern Plant.png", name: "Fern", price: "20"),
  const SaleList(url: "assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.png", name: "Ficus Lyrata", price: "30"),
  const SaleList(url: "assets/images/Golden-Devil-ivy_Office.png", name: "Golden-Devil-ivy", price: "30"),
  const SaleList(url: "assets/images/Jade-Plant.png", name: "Jade", price: "10"),
];


class FilterWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Shop", style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("New Arrival", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  Container(
                    child: Image.asset("assets/icons/icons8-expand-arrow-64.png", width: 20,),
                  )
                ],
              ),
              Row(
                children: [
                  const Text("Price", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  Container(
                    child: Image.asset("assets/icons/icons8-expand-arrow-64.png", width: 20,),
                  )
                ],
              ),
            ]
          ),

          Wrap(
            alignment: WrapAlignment.start,
            spacing: 15,
            runSpacing: 20,
            children: plantsList.map((e) => Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(e.url, width: 100, height: 100,)
                ),
                Text(e.name),
                Text(e.price + " €")
              ],
            )).toList(),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 9, 47, 16)
            ),
            child: const Text("More", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),)
          ),

          Column(
            children: [
              Text("Sale"),
              Wrap(
                children: [],
              )
            ],
          )
        ],
      ),
    );
  }
}