import 'dart:ui';

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text('About us'),
          const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget erat volutpat, malesuada magna et, euismod lectus. Mauris sed elementum ipsum. Fusce non pulvinar tellus, vel egestas massa. Morbi ac facilisis dolor, eget commodo felis. Proin at vestibulum magna. Nunc porta blandit malesuada. Curabitur ac mi venenatis, ultrices orci a, lacinia ex. Vestibulum augue tortor, iaculis ac vulputate vitae, laoreet vitae arcu.'),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.red;
                }
                return null;
              })
            ),
            onPressed: () {},
            child: const Text('Click here'))
        ],
      ),
    );
  }
}