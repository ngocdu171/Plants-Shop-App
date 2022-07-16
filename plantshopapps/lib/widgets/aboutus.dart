import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/icons/quotation-mark.png",
            width: 40,
            height: 40,
          ),
          const Text('About us', style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold
            ),),
          const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget erat volutpat, malesuada magna et, euismod lectus. Mauris sed elementum ipsum. Fusce non pulvinar tellus, vel egestas massa.'
          ),
          SizedBox(
            width: 100,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 47, 16),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        'Start',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/icons/icons8-arrow-64.png",
                      width: 25,
                      color: Colors.white,
                    )
                  ],
                )),
          ),
          Stack(
            children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Container(
                    width: 260,
                    height: 360,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 255, 242),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 40,
                bottom: 10
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/thikim.jpg",
                    width: 330,
                    height: 430,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
