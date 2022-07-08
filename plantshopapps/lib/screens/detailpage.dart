import 'package:flutter/material.dart';
// import 'package:plantshopapps/data/plants.dart';
import 'package:plantshopapps/widgets/app_bar.dart';
import 'package:plantshopapps/widgets/footer.dart';

class DetailPage extends StatelessWidget {
  // final PlantsList plantsList;
  final int id;
  final String title;
  final String url;
  final String price;

  const DetailPage({ required this.title, required this.id,
  required this.url, required this.price });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 25,
                right: 25
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Center(child: Image.asset(url, width: 200, height: 200,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title),
                      const Text("Store: 99"),
                      
                    ],
                  ),
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eros eros, faucibus vitae felis eu, sodales pharetra leo. Vivamus tempor, dui ut rhoncus vehicula, justo tellus sollicitudin urna, nec posuere orci tellus a magna. Integer nec laoreet nibh, vitae egestas augue. In semper ut massa sed dignissim. Praesent nec maximus.",
                    maxLines: 1, overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Size"),
                      Row(
                        children: const [
                          Text("0.5 m"),
                          Text("1.2 m"),
                          Text("1.4 m"),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Quantity"),
                      Row(
                        children: const [
                          Icon(Icons.remove_circle_outline),
                          Text("1", style: TextStyle(
                            fontSize: 18
                          ),),
                          Icon(Icons.add_circle_outline),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price + " €"),
                      SizedBox(
                        width: 100,
                        child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 9, 47, 16),
                        ),
                        onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.add_shopping_cart, color: Color.fromARGB(255, 255, 255, 255),),
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Decorate"),
                      Text("Care"),
                      Text("Plant")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/icons8-temperature-64.png", width: 30, height: 30,),
                          Container(
                            width: 300,
                            child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus ante, ultricies eget lectus vitae, hendrerit pharetra dui. Aliquam erat volutpat.")
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/icons8-sun-64.png", width: 30, height: 30,),
                          Container(
                            width: 300,
                            child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus ante, ultricies eget lectus vitae, hendrerit pharetra dui. Aliquam erat volutpat.")
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/icons8-water-64.png", width: 30, height: 30,),
                          Container(
                            width: 300,
                            child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus ante, ultricies eget lectus vitae, hendrerit pharetra dui. Aliquam erat volutpat.")
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/icons8-minecraft-shovel-64.png", width: 30, height: 30,),
                          Container(
                            width: 300,
                            child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus ante, ultricies eget lectus vitae, hendrerit pharetra dui. Aliquam erat volutpat.")
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    color: const Color.fromARGB(255, 181, 68, 68),
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                          Positioned(
                            // left: 30,
                            right: 10,
                            child: Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/rubber plant.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),

                        Positioned(
                          left: 10,
                          bottom: 50,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/peonies_Outdoor.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}