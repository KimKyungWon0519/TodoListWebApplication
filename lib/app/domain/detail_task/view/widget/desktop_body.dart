import 'package:flutter/material.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/input_panel.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/option_panel.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
