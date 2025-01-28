import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 4,
              children: [
                Expanded(
                  child: Text(
                    '제목',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('담당자'),
              ],
            ),
            Divider(),
            Text('2025.01.01'),
          ],
        ),
      ),
    );
  }
}
