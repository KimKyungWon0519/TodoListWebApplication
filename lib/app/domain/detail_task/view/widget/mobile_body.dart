import 'package:flutter/material.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/input_panel.dart';
import 'package:todo_list_application/app/domain/detail_task/view/widget/option_panel.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 3,
            child: InputPanel(),
          ),
          Divider(),
          OptionPanel(),
        ],
      ),
    );
  }
}
