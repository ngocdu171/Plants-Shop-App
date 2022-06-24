import 'package:flutter/material.dart';
import 'package:plantshopapps/screens/homepage.dart';
import 'package:plantshopapps/screens/shoppage/widget/filterwidget.dart';
import 'package:plantshopapps/screens/shoppage/widget/salewidget.dart';
import 'package:plantshopapps/widgets/app_bar.dart';
import 'package:plantshopapps/widgets/footer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CustomAppBar(),
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
              ),
              FilterWidget(),
              const SaleWidget(),
              
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}