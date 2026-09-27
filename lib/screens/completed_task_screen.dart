import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';
import 'package:task_manager/widgets/task_card.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TaskCard(
            taskModel: TaskModel(
              title: "New",
              description: "Another",
              status: "Old",
              createdAt: '20.4.2028',
            ),
            CardColor: Colors.red,
            refreshParent: () {},
          );
        },
      ),
    );
  }
}
