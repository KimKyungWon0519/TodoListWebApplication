import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/view/detail_task_dialog.dart';
import 'package:todo_list_application/app/domain/task_board/model/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard(this.task, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.dialog(DetailTaskDialog()),
      child: Card(
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 4,
                children: [
                  Expanded(
                    child: Text(
                      task.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(task.assignee),
                ],
              ),
              Divider(),
              Text(task.date.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
