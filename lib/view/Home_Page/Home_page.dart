import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/core/constants/image_constant.dart';
import 'package:instagram_clone/view/Home_Page/widgets/CustomPostCard.dart';
import 'package:instagram_clone/view/Home_Page/widgets/customstoryavatar.dart';
import 'package:instagram_clone/view/dummydb.dart';

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
        leading: Icon(Icons.camera_alt_outlined, size: 23),
        title: Image.asset(
          ImageConstant.applogo,
          scale: 1.5,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 1,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    DummyDb.storylist.length,
                    (index) => CustomStoryAvatar(
                          proPic: DummyDb.storylist[index]["profilepic"],
                          username: DummyDb.storylist[index]["username"],
                          isLive: DummyDb.storylist[index]["isLive"],
                        )),
              ),
            ),
            // Divider(
            //   thickness: 1,
            // ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: DummyDb.postlist.length,
              itemBuilder: (context, index) => CustomPostCard(
                propic: DummyDb.postlist[index]['profilepic'].toString(),
                username: DummyDb.postlist[index]['userName'].toString(),
                location: DummyDb.postlist[index]['Location'].toString(),
                posts: DummyDb.postlist[index]['posts'],
                captions: DummyDb.postlist[index]['captions'].toString(),
                date: DummyDb.postlist[index]['date'].toString(),
                isliked: DummyDb.postlist[index]['isliked'],
              ),
            )
          ],
        ),
      ),

      //  Column(
      //   children: <Widget>[
      //     Divider(
      //       thickness: .2,
      //     ),

      //     Row(
      //       children: [
      //         Expanded(
      //           child: SizedBox(
      //             height: 70,
      //             child: ListView.builder(
      //               scrollDirection: Axis.horizontal,
      //               itemCount: 10,
      //               padding: EdgeInsets.all(3),
      //               itemBuilder: (BuildContext context, int index) {
      //                 return CustomStoryAvatar(
      //                     );
      //               },
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     Divider(
      //       thickness: 2,
      //     ),
      //     Row(
      //       children: [
      //         CircleAvatar(
      //           radius: 20,
      //         ),
      //         Column(
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text("joshua_l"),
      //                 Image.asset(ImageConstant.officialicon),
      //                 Icon(Icons.more_horiz)
      //               ],
      //             ),
      //             Text("Tokyo,japan"),
      //           ],
      //         ),
      //       ],
      //     ),
      //     // SizedBox(
      //     //   height: 10,
      //     // ),
      //     Image.asset(
      //       ImageConstant.rectangleimage,
      //       height: 375,
      //       width: 400,
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),

      //     Row(
      //       children: [
      //         Icon(Icons.favorite_outline),
      //         SizedBox(
      //           width: 10,
      //         ),
      //         Icon(Icons.chat_bubble_outline),
      //         SizedBox(
      //           width: 10,
      //         ),
      //         Container(
      //             decoration: BoxDecoration(),
      //             child: Image.asset(ImageConstant.messangericon)),
      //         SizedBox(
      //           width: 275,
      //         ),
      //         Icon(Icons.bookmark_outline),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
