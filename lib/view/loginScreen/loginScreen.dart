import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/core/constants/image_constant.dart';
import 'package:instagram_clone/global_widgets/custom_Button.dart';
import 'package:instagram_clone/view/Home_Page/Home_page.dart';
import 'package:instagram_clone/view/bottomnotification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageConstant.applogo),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: ColorConstant.primarygrey,
                    filled: true,
                    labelText: 'username',
                    labelStyle: TextStyle(
                        color: ColorConstant.primaryblack.withOpacity(.4)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorConstant.primaryblack.withOpacity(.1))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: passwordController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      fillColor: ColorConstant.primarygrey,
                      filled: true,
                      labelStyle: TextStyle(
                          color: ColorConstant.primaryblack.withOpacity(.4)),
                      labelText: 'password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  ColorConstant.primaryblack.withOpacity(.1)))),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: Text("forgot password?"))),
                CustomButton(
                  text: "log in",
                  buttoncolor: nameController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty
                      ? ColorConstant.primaryblue
                      : ColorConstant.primaryblue.withOpacity(.4),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (Conext) => BottomNavigation()),
                        (Route) => false);
                  },
                ),
                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 33,
                        thickness: 2,
                      ),
                    ),
                    Text("OR"),
                    Expanded(
                      child: Divider(
                        indent: 33,
                        endIndent: 10,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                          color: ColorConstant.primaryblack.withOpacity(0.4)),
                      children: [
                        TextSpan(
                            text: "Sign up",
                            style: TextStyle(color: ColorConstant.primaryblue))
                      ]),
                ),
              ],
            ),
          ),
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
