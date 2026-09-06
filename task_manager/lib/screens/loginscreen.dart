import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/screens/email_verify.dart';

import 'package:task_manager/screens/main_nav_screen.dart';
import 'package:task_manager/screens/signup.dart';
import 'package:task_manager/utill/app_color.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sceen_background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 130),
                Text(
                  "Get Started Here",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20),

                TextFormField(decoration: InputDecoration(hintText: "Email")),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                SizedBox(height: 30),

                FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainNavScreen()),
                    );
                  },
                  child: Icon(Icons.arrow_circle_right),
                ),

                SizedBox(height: 20),

                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmailVerify(),
                            ),
                          );
                        },
                        child: Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Don't have account?  ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                          ),
                          children: [
                            TextSpan(
                              text: "Sign Up",
                              style: TextStyle(color: AppColor.primary1),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Signup(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
