import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/screens/loginscreen.dart';
import 'package:task_manager/utill/app_color.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<SetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sceen_background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 130),
                Text(
                  "Set Password",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20),

                TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                ),

                SizedBox(height: 10),

                TextFormField(
                  decoration: InputDecoration(labelText: "Confirm Password"),
                ),

                SizedBox(height: 10),
                FilledButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_circle_right),
                ),

                SizedBox(height: 40),

                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Allready have account?  ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(color: AppColor.primary1),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
