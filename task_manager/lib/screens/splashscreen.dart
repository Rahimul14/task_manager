import 'package:flutter/material.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/screens/loginscreen.dart';
import 'package:task_manager/utill/asset_path.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Future<void> nextToMove() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (contex) => Loginscreen()),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextToMove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sceen_background(
        child: Center(
          child: Image.asset(AssetPath.logo, width: 250, height: 250),
        ),
      ),
    );
  }
}
