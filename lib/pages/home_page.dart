import 'package:flutter/material.dart';
import 'package:test_install_flutter/utils/todo_list.dart'; // Pastikan ini adalah path yang benar

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<List<dynamic>> toDoList = [
    [
      'Learn Flutter',
      false
    ],
    [
      'Drink Coffee',
      false
    ],
    [
      'Code with obeetek',
      false
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Text('Simple Todo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
          // Gunakan widget TodoList untuk menampilkan task
          return TodoList(
            taskName: toDoList[index][0],
            taskComplated: toDoList[index][1],
          );
        },
      ),
    );
  }
}
