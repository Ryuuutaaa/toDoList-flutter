import 'package:flutter/material.dart';
import 'package:test_install_flutter/utils/todo_list.dart'; // Pastikan ini adalah path yang benar

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

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
            onChanged: (value) => checkBoxChanged(index),
          );
        },
      ),
      floatingActionButton: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(filled: true, fillColor: Colors.deepPurple.shade200, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(15)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(15))),
            ),
          )),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
