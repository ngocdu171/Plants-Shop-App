import 'package:flutter/material.dart';
import 'package:plantshopapps/screens/profilepage.dart';
import 'package:plantshopapps/widgets/aboutus.dart';
import 'package:plantshopapps/widgets/app_bar.dart';
import 'package:plantshopapps/widgets/category.dart';
import 'package:plantshopapps/widgets/footer.dart';
import 'package:plantshopapps/widgets/recommend.dart';
import 'package:plantshopapps/widgets/welcome.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List <Widget> _widgetOptions = <Widget>[
    const Text('Home'),
    const ProfilePage()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomAppBar(),
//             Welcome(),
//             Category(),
//             Recommend(),
//             AboutUs(),
//             Footer()
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile'
//           ),
//         ],
//       ),
//       // drawer: const Drawer(),
//       // appBar: AppBar(
//       //   title: const Text('HomePage'),
//       //   // backgroundColor: const Color.fromARGB(255, 20, 141, 18),
//       // ),
//       // body: const Body()
//       // // ListView(
//       // //   children: const <Widget>[
//       // //     Welcome(),
//       // //     Text('Category', style: TextStyle(fontSize: 40),),
//       // //     Category(),
//       // //     Text('Recommend', style: TextStyle(fontSize: 40),),
//       // //     Recommend(),
//       // //     AboutUs(),
//       // //     Footer(),
//       // //   ],
//       // // ),
//     );
//   }
// }