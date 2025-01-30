import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/view/detail_task_dialog.dart';
import 'package:todo_list_application/app/domain/mapper/task_mapper.dart';
import 'package:todo_list_application/app/domain/mapper/task_type_mapper.dart';
import 'package:todo_list_application/app/domain/task_board/controller/task_controller.dart';
import 'package:todo_list_application/app/domain/task_board/model/task.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart'
    as DetailTask;
import 'package:todo_list_application/app/domain/detail_task/model/task.dart'
    as DetailTask;

class BoardFooter extends StatelessWidget {
  final TaskType taskType;

  const BoardFooter({
    super.key,
    required this.taskType,
  });

  @override
  Widget build(BuildContext context) {
    TaskController controller = Get.find<TaskController>();

    return TextButton.icon(
      onPressed: () async {
        Map<String, dynamic>? result = await Get.dialog(
          DetailTaskDialog(taskType: taskType.toDetailModel()),
          barrierDismissible: false,
        );

        if (result == null) return;

        TaskType type =
            (result['type']! as DetailTask.TaskType).toTaskBoardModel();
        Task task = (result['task']! as DetailTask.Task).toTaskBoardModel();

        controller.addTask(type, task);
      },
      label: Text('추가'),
      icon: Icon(Icons.add),
    );
  }
}
