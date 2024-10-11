import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.taskName,
    required this.taskComplated,
    this.onChanged,
  });

  final String taskName;
  final bool taskComplated;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 0,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskComplated,
              onChanged: onChanged,
              checkColor: Colors.black,
              activeColor: Colors.white,
              side: const BorderSide(color: Colors.white),
            ),
            Text(
              taskName, // Hapus tanda titik koma
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
