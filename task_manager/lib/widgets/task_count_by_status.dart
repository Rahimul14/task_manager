import 'package:flutter/material.dart';

class TaskCountByStatus extends StatelessWidget {
  final String title;
  final int count;
  const TaskCountByStatus({
    super.key,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 92,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 15, offset: Offset(10, 8)),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        child: Column(
          children: [
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
