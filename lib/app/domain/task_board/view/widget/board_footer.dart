import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/view/detail_task_dialog.dart';

class BoardFooter extends StatelessWidget {
  const BoardFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Get.dialog(DetailTaskDialog());
      },
      label: Text('추가'),
      icon: Icon(Icons.add),
    );
  }
}
