import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';
import 'package:task_manager/utill/app_color.dart';

class TaskCard extends StatelessWidget {
  final TaskModel taskModel;
  final Color CardColor;
  final VoidCallback refreshParent;
  const TaskCard({
    super.key,
    required this.taskModel,
    required this.CardColor,
    required this.refreshParent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(
            taskModel.title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontSize: 25),
          ),

          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(taskModel.description, style: TextStyle(color: Colors.grey)),
              Text('Date: ${taskModel.createdAt}'),
              Row(
                children: [
                  Chip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        taskModel.status,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(25),
                    ),
                    backgroundColor: CardColor,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: AppColor.primary1),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
