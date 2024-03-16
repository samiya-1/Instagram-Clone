import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';

class CustomPostCard extends StatefulWidget {
  CustomPostCard(
      {super.key,
      required this.propic,
      required this.username,
      required this.location,
      this.isliked = false,
      required this.posts,
      required this.captions,
      required this.date});

  final String propic;
  final String username;
  final String location;
  final List<String> posts;
  final bool isliked;
  final String captions;
  final String date;

  @override
  State<CustomPostCard> createState() => _CustomPostCardState();
}

class _CustomPostCardState extends State<CustomPostCard> {
  int currentpage = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.primarywhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.propic),
              radius: 22,
            ),
            title: Row(
              children: [
                Text(
                  widget.username,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.verified,
                  color: ColorConstant.normalblue,
                )
              ],
            ),
            subtitle: Text(
              widget.location,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Stack(children: [
            SizedBox(
              height: 375,
              child: PageView.builder(
                onPageChanged: (value) {
                  currentpage = value + 1;
                  setState(() {});
                },
                dragStartBehavior: DragStartBehavior.down,
                itemCount: widget.posts.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.posts[index]),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstant.primaryblack.withOpacity(.2)),
                child: Text(
                  "$currentpage/${widget.posts.length}",
                  style: TextStyle(color: ColorConstant.primarywhite),
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        widget.isliked == true
                            ? Icon(
                                Icons.favorite,
                                size: 32,
                                color: ColorConstant.normalred,
                              )
                            : Icon(
                                Icons.favorite_outline,
                                size: 32,
                              ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.mode_comment_outlined,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.share_outlined,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          widget.posts.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: CircleAvatar(
                                  
                                  backgroundColor: (index == currentpage - 1)
                                      ? ColorConstant.normalblue
                                      : null,
                                  radius: (index == currentpage - 1) ? 5 : 3,
                                  //backgroundColor: ColorConstant.primarygrey,
                                ),
                              )),
                    )),
                    Icon(
                      Icons.bookmark_outline,
                      size: 32,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(widget.propic),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Liked by ",
                          style: TextStyle(
                            color: ColorConstant.primaryblack,
                          ),
                          children: [
                            TextSpan(
                                text: "user_name",
                                style: TextStyle(
                                    color: ColorConstant.primaryblack,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(text: " and "),
                            TextSpan(
                                text: "44,686 others ",
                                style: TextStyle(
                                    color: ColorConstant.primaryblack,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                RichText(
                  text: TextSpan(
                      text: widget.username,
                      style: TextStyle(
                          color: ColorConstant.primaryblack,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: widget.captions ?? "",
                            style: TextStyle(
                                color: ColorConstant.primaryblack,
                                fontWeight: FontWeight.normal))
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.date,
                  style: TextStyle(
                      color: ColorConstant.primaryblack.withOpacity(.4)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
