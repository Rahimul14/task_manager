import 'package:flutter/material.dart';
import 'package:task_manager/background/screen_background.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: Sceen_background(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 130),
                Text(
                  "Add New Task",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: .bold),
                ),
                SizedBox(height: 20),

                TextFormField(decoration: InputDecoration(hintText: "Title")),
                SizedBox(height: 10),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(hintText: "Description"),
                ),
                SizedBox(height: 30),

                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_circle_right),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
