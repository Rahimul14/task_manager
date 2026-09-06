import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/screens/loginscreen.dart';
import 'package:task_manager/screens/set_password.dart';
import 'package:task_manager/utill/app_color.dart';

class pin_code extends StatefulWidget {
  const pin_code({super.key});

  @override
  State<pin_code> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<pin_code> {
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
                  "OTP Verifecation ",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20),

                MaterialPinField(
                  length: 6,
                  obscureText: true,
                  blinkWhenObscuring: false,

                  theme: MaterialPinTheme(
                    borderRadius: BorderRadius.circular(5),
                    spacing: 12,
                    shape: MaterialPinShape.outlined,
                    fillColor: Colors.transparent,
                    filledFillColor: Colors.transparent,
                    borderColor: Colors.grey,
                  ),
                ),

                SizedBox(height: 10),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SetPassword()),
                    );
                  },
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
