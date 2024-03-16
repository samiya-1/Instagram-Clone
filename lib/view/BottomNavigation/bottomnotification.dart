import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/core/constants/image_constant.dart';
import 'package:instagram_clone/view/Home_Page/Home_page.dart';
import 'package:instagram_clone/view/exploreSearchPage/searchScreen.dart';
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
    SearchScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    ),
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
              activeIcon: Icon(Icons.home_filled),
              icon: Icon(Icons.home_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.search_rounded),
              icon: Icon(
                Icons.search_outlined,
                color: ColorConstant.primaryblack,
              ),
              label: "",
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
                label: ""),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_outline),
              label: "",
            ),
            BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: ColorConstant.primaryblack,
                  radius: 16,
                  child: Center(
                    child: CircleAvatar(radius: 15, backgroundImage: AssetImage(ImageConstant.profilepic),),
                  ),
                ),
                icon: CircleAvatar(
                  backgroundImage: AssetImage(ImageConstant.profilepic),
                  radius: 15,
                ),
                label: ''),
          ]),
    );
  }
}
