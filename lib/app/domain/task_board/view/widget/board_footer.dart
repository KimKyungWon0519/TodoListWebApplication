import 'package:flutter/material.dart';

class BoardFooter extends StatelessWidget {
  const BoardFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: Text('추가'),
      icon: Icon(Icons.add),
    );
  }
}
