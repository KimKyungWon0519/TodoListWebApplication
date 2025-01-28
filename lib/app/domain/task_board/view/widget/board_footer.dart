import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/add_task/view/add_dialog.dart';

class BoardFooter extends StatelessWidget {
  const BoardFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Get.dialog(AddDialog());
      },
      label: Text('추가'),
      icon: Icon(Icons.add),
    );
  }
}
