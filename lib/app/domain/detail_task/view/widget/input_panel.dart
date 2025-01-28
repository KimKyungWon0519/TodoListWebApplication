import 'package:flutter/material.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/base_field.dart';

class InputPanel extends StatelessWidget {
  const InputPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        BaseField(labelText: '제목'),
        Expanded(
          child: BaseField(
            labelText: '내용',
            expands: true,
          ),
        ),
      ],
    );
  }
}
