import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/core/constants/image_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: ColorConstant.primaryblack,
        elevation: 0,
        leading: Icon(Icons.photo_camera_outlined, size: 23),
        title: Image.asset(
          ImageConstant.applogo,
          width: 105,
          height: 30,
        ),
        centerTitle: true,
        actions: [
          Image.asset(ImageConstant.igtvicon),
          SizedBox(
            width: 20,
          ),
          Image.asset(ImageConstant.messangericon),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Divider(
            thickness: .2,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: EdgeInsets.all(3),
                    itemBuilder: (BuildContext context, int index) {
                      return CircleAvatar(
                        radius: 35,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("joshua_l"),
                      Image.asset(ImageConstant.officialicon),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  Text("Tokyo,japan"),
                ],
              ),
            ],
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Image.asset(
            ImageConstant.rectangleimage,
            height: 375,
            width: 400,
          ),
          SizedBox(
            height: 10,
          ),

          Row(
            children: [
              Icon(Icons.favorite_outline),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.chat_bubble_outline),
              SizedBox(
                width: 10,
              ),
              Image.asset(ImageConstant.messangericon),
              SizedBox(
                width: 275,
              ),
              Icon(Icons.bookmark_outline),
            ],
          )
        ],
      ),
    );
  }
}
