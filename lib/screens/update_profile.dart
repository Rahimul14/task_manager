import 'package:flutter/material.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: Sceen_background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Text(
                    "UpdateProfile",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontWeight: .bold),
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Image",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        SizedBox(width: 5),
                        Expanded(child: Text("Upload Image")),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

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
                  TextFormField(
                    decoration: InputDecoration(hintText: "Mobile"),
                  ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
