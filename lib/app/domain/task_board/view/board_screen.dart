import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanban_board/custom/board.dart';
import 'package:kanban_board/models/inputs.dart';
import 'package:todo_list_application/app/domain/task_board/controller/task_controller.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';
import 'package:todo_list_application/app/domain/task_board/view/widget/board_footer.dart';
import 'package:todo_list_application/app/domain/task_board/view/widget/board_header.dart';
import 'package:todo_list_application/app/domain/task_board/view/widget/task_card.dart';

class BoardScreen extends GetView<TaskController> {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('투두'),
      ),
      body: KanbanBoard(
        List.generate(
          TaskType.values.length,
          (index) {
            return BoardListsData(
              backgroundColor: Colors.white,
              width: MediaQuery.sizeOf(context).width / 4 - 16,
              header: BoardHeader(text: TaskType.values[index].name),
              footer: BoardFooter(),
              items: [
                TaskCard(),
              ],
            );
          },
        ),
      ),
    );
  }
}
