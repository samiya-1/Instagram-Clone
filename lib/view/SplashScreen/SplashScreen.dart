import 'package:flutter/material.dart';
import 'package:instagram_clone/view/selectaccountscreen/selectaccountscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SelectAccountScreen()))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/instagramicon.png",
          scale: 1.5,
        ),
      ),
    );
  }
}