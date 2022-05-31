import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            "assets/icons/quotation-mark.png",
            width: 40,
            height: 40,
          ),
          const Text('About us'),
          const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget erat volutpat, malesuada magna et, euismod lectus. Mauris sed elementum ipsum. Fusce non pulvinar tellus, vel egestas massa. Morbi ac facilisis dolor, eget commodo felis. Proin at vestibulum magna. Nunc porta blandit malesuada. Curabitur ac mi venenatis, ultrices orci a, lacinia ex. Vestibulum augue tortor, iaculis ac vulputate vitae, laoreet vitae arcu.'),
          SizedBox(
            width: 130,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green.shade900,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const Text(
                      'Click here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
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
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Image.asset(
              "assets/images/thikim.jpg",
              width: 300,
              height: 400,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
