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
                  Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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
                  Text(price),
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