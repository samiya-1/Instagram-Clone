import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.buttoncolor = ColorConstant.primaryblue,
      this.haveborder = false,
      this.onTap});
  final String text;
  final Color buttoncolor;
  final bool haveborder;
  final Color textcolor = ColorConstant.primarywhite;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: buttoncolor,
            borderRadius: BorderRadius.circular(5),
            border: haveborder == true
                ? Border.all(color: ColorConstant.primaryblack.withOpacity(0.4))
                : null),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
