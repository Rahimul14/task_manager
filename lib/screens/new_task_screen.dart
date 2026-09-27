import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';
import 'package:task_manager/screens/add_new_task_screen.dart';
import 'package:task_manager/widgets/task_card.dart';
import 'package:task_manager/widgets/task_count_by_status.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
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
                    status: "New",
                    createdAt: "8/9/2026",
                  ),
                  CardColor: Colors.blue,
                  refreshParent: () {},
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewTaskScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
