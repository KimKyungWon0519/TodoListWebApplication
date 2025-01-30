import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/controller/task_editing_controller.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/base_field.dart';

class InputPanel extends StatelessWidget {
  const InputPanel({super.key});

  @override
  Widget build(BuildContext context) {
    TaskEditingController controller = Get.find<TaskEditingController>();

    return Column(
      spacing: 8,
      children: [
        BaseField(
          labelText: '제목',
          initialValue: controller.title,
          onSaved: (value) => controller.title = value,
        ),
        Expanded(
          child: BaseField(
            labelText: '내용',
            expands: true,
            initialValue: controller.content,
            onSaved: (value) => controller.content = value,
          ),
        ),
      ],
    );
  }
}
