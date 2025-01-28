import 'package:flutter/material.dart';
import 'package:todo_list_application/app/domain/add_task/view/widget/base_field.dart';
import 'package:todo_list_application/app/domain/add_task/view/widget/input_panel.dart';
import 'package:todo_list_application/app/domain/add_task/view/widget/option_panel.dart';

class AddDialog extends StatelessWidget {
  const AddDialog({super.key});

  @override
  Widget build(BuildContext context) {
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
