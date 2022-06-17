import 'package:flutter/material.dart';
// import 'package:plantshopapps/data/hotList.dart';

class HotList {
  final String url;
  final String name;
  final String price;

  const HotList({
    required this.url,
    required this.name,
    required this.price
  });
}

List<HotList> hotList = [
  const HotList(url: "assets/images/Aloe Vera.png", name: "Aloe Vera", price: "10"),
  const HotList(url: "assets/images/Fern Plant.png", name: "Fern Plant", price: "20"),
  const HotList(url: "assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.png", name: "Ficus Lyrata", price: "30"),
  const HotList(url: "assets/images/Jade-Plant.png", name: "Jade-Plant", price: "10"),
  const HotList(url: "assets/images/palm.png", name: "palm", price: "20"),
  const HotList(url: "assets/images/snapdragon_Outdoor.png", name: "snapdragon", price: "30"),
];

class Recommend extends StatelessWidget {
  // bool isChecked = false;

  // Future openDialog() => showDialog(
  //   context: context,
  //   builder: (context) => const AlertDialog(
  //     title: Text("Testing!!!!"),
  //     content: CheckboxListTile(
  //       controlAffinity: ListTileControlAffinity.leading,
  //       title: Text(
  //         isChecked ? "Yes" : "No",
  //         style: TextStyle(fontSize: 24),
  //       ),
  //       value: isChecked,
  //       onChanged: (isChecked) =>
  //         setState(() => this.isChecked = isChecked!),
  //     ),
  //     actions: [
  //       TextButton(
  //         onPressed: () => Navigator.of(context).pop(),
  //         child: Text("Submit")
  //       )
  //     ],
  //   )
  // )

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   color: Colors.black
      // ),
      height: 400,
      // margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('Recommend', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold
          ),),
          Container(
            height: 340,
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 15,
                  runSpacing: 20,
                  // direction: Axis.vertical,
                  // direction: Axis.horizontal,
                  children: hotList.map((e) => Column(
                          children: [
                            // Container(
                            //   height: 100,
                            //   width: 100,
                            //   decoration: BoxDecoration(
                            //     borderRadius: const BorderRadius.all(Radius.circular(30)),
                            //     color: Colors.black,
                            //     image: DecorationImage(
                            //       image: AssetImage(e.url),
                            //       fit: BoxFit.fitHeight
                            //     )
                            //   ),
                            // ),
                            Image.asset(e.url, width: 100, height: 100,),
                            Text(e.name),
                            Text(e.price + " €")
                          ],
                        ),
                    ).toList(),
                  ),
                  TextButton(
                    onPressed: () {
                      // openDialog();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 9, 47, 16),
                    ),
                    child: const Text("More", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),)
                  )
                ]
            ),

            // child: Column(
            //   children: hotList.map((e) => Column(
            //           children: [
            //             // Container(
            //             //   height: 100,
            //             //   width: 100,
            //             //   decoration: BoxDecoration(
            //             //     borderRadius: const BorderRadius.all(Radius.circular(30)),
            //             //     color: Colors.black,
            //             //     image: DecorationImage(
            //             //       image: AssetImage(e.url),
            //             //       fit: BoxFit.fitHeight
            //             //     )
            //             //   ),
            //             // ),
            //             Image.asset(e.url, width: 100, height: 100,),
            //             Text(e.name),
            //             Text(e.price)
            //           ],
            //         ),
            //     ).toList(),
            //   ),

            )
        
        ],
        

      ),

    );

  }

  setState(bool Function() param0) {}
}