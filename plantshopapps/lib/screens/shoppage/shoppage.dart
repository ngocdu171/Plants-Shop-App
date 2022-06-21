import 'package:flutter/material.dart';
import 'package:plantshopapps/screens/homepage.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text("Shop page"),
              TextButton(
                onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage())
                    );
                  }
                ),
                child: const Text("Back to homePage"),
              )
            ],
          ),
        ),
      ),
    );
  }
}