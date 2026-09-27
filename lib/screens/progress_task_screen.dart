import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';
import 'package:task_manager/widgets/task_card.dart';
import 'package:task_manager/widgets/task_count_by_status.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TaskCountByStatus(title: 'New', count: 1);
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 8);
              },
              itemCount: 4,
            ),
          ),
          SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return TaskCard(
                  taskModel: TaskModel(
                    title: 'Demo Task',
                    description: "Demo Task description'",
                    status: "Progress",
                    createdAt: "8/9/2026",
                  ),
                  CardColor: Colors.purple,
                  refreshParent: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
