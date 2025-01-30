import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/controller/task_editing_controller.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/input_panel.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/option_panel.dart';

class DetailTaskDialog extends StatelessWidget {
  final TaskType taskType;

  const DetailTaskDialog({
    super.key,
    required this.taskType,
  });

  @override
  Widget build(BuildContext context) {
    TaskEditingController controller = Get.put(TaskEditingController());

    controller.taskType = taskType;

    return AlertDialog(
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width / 1.5,
        child: Row(
          spacing: 16,
          children: [
            Expanded(
              flex: 6,
              child: InputPanel(),
            ),
            VerticalDivider(),
            Expanded(
              child: OptionPanel(),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text('저장'),
        ),
      ],
    );
  }
}
