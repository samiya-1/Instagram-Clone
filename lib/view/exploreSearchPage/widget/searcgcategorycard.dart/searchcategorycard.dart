import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';

class SearchCategoryCard extends StatelessWidget {
  const SearchCategoryCard({super.key, this.icon});
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ColorConstant.primaryblack.withOpacity(.1),
        ),
      ),
      child: Row(
        children: [icon != null ? Icon(icon) : SizedBox(), Text("data")],
      ),
    );
  }
}
