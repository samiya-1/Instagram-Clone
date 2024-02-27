import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/core/constants/image_constant.dart';
import 'package:instagram_clone/global_widgets/custom_Button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstant.applogo),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'username',
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide())),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'password',
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide())),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: Text("forgot password?"))),
            CustomButton(
              text: "log in",
              buttoncolor: ColorConstant.primaryblue.withOpacity(.4),
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageConstant.facebookicon),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Log in with Facebook"),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: 0.3))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Instagram or Facebook",
              style:
                  TextStyle(color: ColorConstant.primaryblack.withOpacity(.4))),
        ),
      ),
    );
  }
}
