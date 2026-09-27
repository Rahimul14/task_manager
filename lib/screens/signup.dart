import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/screens/loginscreen.dart';
import 'package:task_manager/utill/app_color.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager/utill/urls.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formlKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _mobileNumber = TextEditingController();
  final TextEditingController _Password = TextEditingController();

  Future<void> Signup() async {
    final response = await http.post(
      Uri.parse(Urls.SignupUrl),
      body: jsonEncode({
        "email": _emailController.text,
        "FirstName": _firstName.text,
        "LastName": _lastName.text,
        "Mobile": _mobileNumber.text,
        "Password": _Password.text,
      }),
    );
    print(_emailController.text);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sceen_background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: _formlKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Text(
                      "Join With Us",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 20),

                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(hintText: "Email"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _firstName,
                      decoration: InputDecoration(hintText: "First Name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your First name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _lastName,
                      decoration: InputDecoration(hintText: "Last Name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Last Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _mobileNumber,
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(hintText: "Mobile"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Mobile Number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _Password,
                      decoration: InputDecoration(hintText: "Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _Password,
                      decoration: InputDecoration(hintText: "Conform Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 30),
                    FilledButton(
                      onPressed: () {
                        if (_formlKey.currentState!.validate()) {
                          Signup();
                        }
                      },
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
        ),
      ),
    );
  }
}
