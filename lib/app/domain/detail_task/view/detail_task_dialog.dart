import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:todo_list_application/app/domain/detail_task/controller/task_editing_controller.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/desktop_body.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/input_panel.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/mobile_body.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/option_panel.dart';

class DetailTaskDialog extends StatelessWidget {
  final TaskType taskType;
  final Task? task;

  const DetailTaskDialog({
    super.key,
    required this.taskType,
    this.task,
  });

  @override
  Widget build(BuildContext context) {
    TaskEditingController controller = Get.put(TaskEditingController());

    controller.initalValue(taskType, task);

    return AlertDialog(
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width / 1.5,
        child: ScreenTypeLayout.builder(
          mobile: (_) => MobileBody(),
          desktop: (_) => DesktopBody(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => _onClickSaveButton(controller),
          child: Text('저장'),
        ),
        TextButton(
          onPressed: () => _onClickCloseButton(controller),
          child: Text('닫기'),
        ),
      ],
    );
  }

  void _onClickSaveButton(TaskEditingController controller) {
    if (controller.isEmptyTask()) {
      Get.defaultDialog(
        title: '경고',
        content: Text('제목과 담당자를 입력해주세요.'),
        actions: [
          TextButton(
            child: Text('확인'),
            onPressed: () => Get.back(),
          ),
        ],
      );
    } else {
      controller.saveTask();
    }
  }

  void _onClickCloseButton(TaskEditingController controller) async {
    if (!controller.willSave && controller.isEditing) {
      bool result = await Get.defaultDialog(
        title: '경고',
        content: Text('편집된 내용이 있습니다.\n해당 창을 닫으면 편집된 내용은 저장되지 않습니다.'),
        actions: [
          TextButton(
            child: Text('닫기'),
            onPressed: () => Get.back(result: true),
          ),
          TextButton(
            child: Text('머무리기'),
            onPressed: () => Get.back(result: false),
          ),
        ],
      );

      if (result) {
        Get.back();
      } else {
        return;
      }
    }

    Get.back(
      result: {'type': controller.taskType, 'task': controller.task},
    );
  }
}
