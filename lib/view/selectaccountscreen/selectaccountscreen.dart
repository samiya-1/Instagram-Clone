import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/core/constants/image_constant.dart';
import 'package:instagram_clone/global_widgets/custom_Button.dart';
import 'package:instagram_clone/view/loginScreen/loginScreen.dart';

class SelectAccountScreen extends StatefulWidget {
  const SelectAccountScreen({super.key});

  @override
  State<SelectAccountScreen> createState() => _SelectAccountScreenState();
}

class _SelectAccountScreenState extends State<SelectAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstant.applogo),
              SizedBox(
                height: 15,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageConstant.profilepic),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Sameea",
                style:
                    TextStyle(fontSize: 14, color: ColorConstant.primaryblack),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: "Log in",
                buttoncolor: ColorConstant.primaryblue,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Switch accounts",
                    style: TextStyle(
                        color: ColorConstant.primaryblue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Don't have an account?",
              style:
                  TextStyle(color: ColorConstant.primaryblack.withOpacity(0.4)),
              children: [
                TextSpan(
                    text: "Sign up",
                    style: TextStyle(color: ColorConstant.primaryblack))
              ]),
        ),
        // child: Row(
        //   children: [
        //     Opacity(
        //         opacity: 0.5,
        //         child: Text(
        //           "Don't have an account?",
        //           style: TextStyle(
        //             color: Colors.black,
        //           ),
        //         )),
        //     Text("Sign up"),
        //   ],
        // ),
      ),
    );
  }
}
