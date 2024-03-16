import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
//import 'package:instagram_clone/core/constants/color_constant.dart';

class CustomStoryAvatar extends StatelessWidget {
  CustomStoryAvatar({
    super.key,
    this.isLive = false,
    required this.proPic,
    required this.username,
  });

  final String proPic;
  final String username;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // #1
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                height: 110,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(end: Alignment.bottomRight, colors: [
                      ColorConstant.normalred,
                      ColorConstant.normalblue,
                      ColorConstant.normalyellow,
                    ])),
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: ColorConstant.primarygrey,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(proPic),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: isLive == true
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  ColorConstant.darkred,
                                  ColorConstant.normalred,
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 4, color: ColorConstant.primarywhite)),
                        child: Center(
                          child: Text(
                            "Live",
                            style: TextStyle(
                                color: ColorConstant.primarywhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : SizedBox(),
              )
            ],
          ),
          SizedBox(height: 3),
          // #2
          Text(
            username,
            style: TextStyle(
                color: ColorConstant.primarywhite,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
