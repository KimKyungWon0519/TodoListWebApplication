import 'package:flutter/material.dart';

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
            TextField(
              decoration: InputDecoration(
                labelText: '제목',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '내용',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '담당자',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '날짜',
                border: OutlineInputBorder(),
              ),
            ),
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
