import 'package:flutter/material.dart';
import 'package:task_manager/utill/app_color.dart';
import 'package:task_manager/widgets/task_count_by_status.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text(
                  "New",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontSize: 25),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New text or new description",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text("8/9/2026"),
                    Row(
                      children: [
                        Chip(
                          label: Text(
                            "New",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.blue,
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
          ),
        ],
      ),
    );
  }
}
