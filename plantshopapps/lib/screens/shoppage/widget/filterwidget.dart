import 'package:flutter/material.dart';
import 'package:plantshopapps/data/plants.dart';

class SaleList {
  final String url;
  final String name;
  final String price;
  final bool sale;

  const SaleList ({
    required this.url,
    required this.name,
    required this.price,
    required this.sale
  });
}

List<SaleList> saleList = [
  const SaleList(url: "assets/images/Aloe Vera.png", name: "Aloe Vera", price: "10", sale: true),
  const SaleList(url: "assets/images/bamboo_Office.png", name: "Bamboo", price: "10", sale: true),
  const SaleList(url: "assets/images/Fern Plant.png", name: "Fern", price: "20", sale: true),
  const SaleList(url: "assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.png", name: "Ficus Lyrata", price: "30", sale: true),
  const SaleList(url: "assets/images/Golden-Devil-ivy_Office.png", name: "Golden-Devil-ivy", price: "30", sale: true),
  const SaleList(url: "assets/images/Jade-Plant.png", name: "Jade", price: "10", sale: true),
  const SaleList(url: "assets/images/Jade-Plant.png", name: "Jade", price: "10", sale: false),
  const SaleList(url: "assets/images/Jade-Plant.png", name: "Jade1", price: "10", sale: false),
  const SaleList(url: "assets/images/Jade-Plant.png", name: "Jade2", price: "10", sale: false),
  const SaleList(url: "assets/images/Jade-Plant.png", name: "Jade3", price: "10", sale: true),
];


class FilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final testList = saleList.where((element) => element.sale == true);

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
                  child: Image.asset(e.url, width: 90, height: 90,)
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Sale", style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold
          ),),
              Column(
                // children: saleList.map((e) => Text(e.name, style: const TextStyle(fontSize: 20),)).toList(),
                // children: saleList.map((e) => (e.sale == false) ? Text(e.name): const Text("ko giam gia")).toList(),

                // children: saleList.map((e) => (e.sale == true) ? Text(e.name): const Text("ko giam gia")).toList(),

                children: testList.map((e) => Text(e.name)).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}