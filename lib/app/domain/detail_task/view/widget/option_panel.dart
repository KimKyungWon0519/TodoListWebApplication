import 'package:flutter/material.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/base_field.dart';

class OptionPanel extends StatelessWidget {
  const OptionPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        DropdownMenu(
          dropdownMenuEntries: [],
          width: double.infinity,
        ),
        BaseField(labelText: '담당자'),
        BaseField(labelText: '날짜'),
      ],
    );
  }
}
