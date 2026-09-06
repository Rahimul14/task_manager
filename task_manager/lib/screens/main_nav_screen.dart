import 'package:flutter/material.dart';
import 'package:task_manager/screens/cancel_task.dart';
import 'package:task_manager/screens/completed_task_screen.dart';
import 'package:task_manager/screens/home.dart';
import 'package:task_manager/screens/progress_task_screen.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    CompletedTaskScreen(),
    CancelTask(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,

        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        destinations: const [
          NavigationDestination(icon: Icon(Icons.task), label: "New"),
          NavigationDestination(icon: Icon(Icons.refresh), label: "Progress"),
          NavigationDestination(icon: Icon(Icons.done), label: "Completed"),
          NavigationDestination(icon: Icon(Icons.cancel), label: "Cancel"),
        ],
      ),
    );
  }
}
