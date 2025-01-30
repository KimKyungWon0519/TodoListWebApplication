import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/detail_task/controller/task_editing_controller.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/base_field.dart';

class OptionPanel extends StatelessWidget {
  const OptionPanel({super.key});

  @override
  Widget build(BuildContext context) {
    TaskEditingController controller = Get.find<TaskEditingController>();

    return Column(
      spacing: 8,
      children: [
        DropdownMenu(
          initialSelection: controller.taskType,
          dropdownMenuEntries: TaskType.values
              .map(
                (e) => DropdownMenuEntry(value: e, label: e.name),
              )
              .toList(),
          onSelected: (value) {
            if (value == null) return;

            controller.taskType = value;
          },
        ),
        BaseField(
          labelText: '담당자',
          initialValue: controller.assignee,
          onSaved: (value) => controller.assignee = value,
        ),
        BaseField(
          labelText: '날짜',
          initialValue: '${controller.date}',
          readOnly: true,
          onTap: () {
            showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              lastDate: DateTime(2300),
              initialDate: controller.date,
            ).then(
              (value) {
                if (value == null) return;

                controller.date = value;
              },
            );
          },
        ),
      ],
    );
  }
}
