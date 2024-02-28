import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/core/constants/image_constant.dart';
import 'package:instagram_clone/view/Home_Page/Home_page.dart';
import 'package:instagram_clone/view/selectaccountscreen/selectaccountscreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedindex = 0;
  List navigationList = [
    HomePage(),
    Text("hi"),
    Text("bvjgbk"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationList.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            if (value != 2) {
              selectedindex = value;
            }
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstant.primaryblack,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectAccountScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all()),
                    child: Icon(Icons.add),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage(ImageConstant.profilepic),
                  radius: 15,
                ),
                label: ''),
          ]),
    );
  }
}
