import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/screens/loginscreen.dart';
import 'package:task_manager/utill/app_color.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  "Join With Us",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20),

                TextFormField(decoration: InputDecoration(hintText: "Email")),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "First Name"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Last Name"),
                ),
                SizedBox(height: 10),
                TextFormField(decoration: InputDecoration(hintText: "Mobile")),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Conform Password"),
                ),
                SizedBox(height: 30),
                FilledButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_circle_right),
                ),

                SizedBox(height: 20),

                Center(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Already have account?  ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                          ),
                          children: [
                            TextSpan(
                              text: "Sign in",
                              style: TextStyle(
                                color: AppColor.primary1,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Loginscreen(),
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
