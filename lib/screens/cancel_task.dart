import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart' show TaskModel;
import 'package:task_manager/widgets/task_card.dart';

class CancelTask extends StatefulWidget {
  const CancelTask({super.key});

  @override
  State<CancelTask> createState() => _CancelTaskState();
}

class _CancelTaskState extends State<CancelTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskCard(
            taskModel: TaskModel(

              title: 'Demo Task',
              description: "Demo Task description'",
              status: "Cancel",
              createdAt: "8/9/2026",
            ),
            CardColor: Colors.red,
            refreshParent: () {},
          );
        },
      ),
    );
  }
}
