import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task.dart'
    as DetailTask;
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart'
    as DetailTask;
import 'package:todo_list_application/app/domain/detail_task/view/detail_task_dialog.dart';
import 'package:todo_list_application/app/domain/mapper/task_mapper.dart';
import 'package:todo_list_application/app/domain/mapper/task_type_mapper.dart';
import 'package:todo_list_application/app/domain/task_board/controller/task_controller.dart';
import 'package:todo_list_application/app/domain/task_board/model/task.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';

class TaskCard extends StatelessWidget {
  final TaskType taskType;
  final Task task;
  final int index;

  const TaskCard(
    this.task, {
    super.key,
    required this.taskType,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    TaskController controller = Get.find<TaskController>();

    return GestureDetector(
      onTap: () async {
        Map<String, dynamic>? result = await Get.dialog(
          DetailTaskDialog(
            taskType: taskType.toDetailModel(),
            task: this.task.toDetailModel(),
          ),
          barrierDismissible: false,
        );

        if (result == null) return;

        TaskType type =
            (result['type']! as DetailTask.TaskType).toTaskBoardModel();
        Task task = (result['task']! as DetailTask.Task).toTaskBoardModel();

        if (type != taskType) {
          controller.deleteTask(taskType, index);
          controller.addTask(type, task);
        } else {
          controller.updateTask(taskType, task, index);
        }
      },
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
