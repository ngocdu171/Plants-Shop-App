import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:plantshopapps/widgets/image_swipe.dart';

class DetailPage extends StatefulWidget {
  final String productId;
  const DetailPage({Key? key, required this.productId}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final CollectionReference _productsRef =
    FirebaseFirestore.instance.collection("products");

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<dynamic>(
            future: _productsRef.doc(widget.productId).get(),
            builder: (context, snapshot) {
              if(snapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text("Error: ${snapshot.error}"),
                  ),
                );
              }

              if(snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> product = snapshot.data?.data();
                List imageList = product['image'];
                List sizeList = product['size'];

                return ListView(
                  padding: const EdgeInsets.all(0),
                  children: [
                    ImageSwipe(imageList: imageList),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                        left: 24,
                        right: 24,
                        bottom: 4
                      ),
                      child: Text(product['name'].toString(), style: const TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 24
                      ),
                      child: Text(product['price'].toString() + '€', style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 39, 39)
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 24
                      ),
                      child: Text(product['description'], style: const TextStyle(
                        fontSize: 16
                      ),),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 24
                      ),
                      child: Text("Select Size:", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),
                    ),
                  ],
                );
              }

              // loading State
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}