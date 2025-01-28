import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/add_task/view/widget/base_field.dart';

class AddDialog extends StatelessWidget {
  const AddDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Text('새로운 일정 추가'),
          Spacer(),
          DropdownMenu(
            dropdownMenuEntries: [],
          ),
        ],
      ),
      content: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.sizeOf(context).width / 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            BaseField(labelText: '제목'),
            BaseField(labelText: '내용'),
            BaseField(labelText: '담당자'),
            BaseField(labelText: '날짜'),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text('완료'),
        ),
      ],
    );
  }
}
