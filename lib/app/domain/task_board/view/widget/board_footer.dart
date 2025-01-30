import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/view/detail_task_dialog.dart';
import 'package:todo_list_application/app/domain/mapper/task_type_mapper.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';

class BoardFooter extends StatelessWidget {
  final TaskType taskType;

  const BoardFooter({
    super.key,
    required this.taskType,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Get.dialog(DetailTaskDialog(taskType: taskType.toDetailModel()));
      },
      label: Text('추가'),
      icon: Icon(Icons.add),
    );
  }
}
