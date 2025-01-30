import 'package:todo_list_application/app/domain/detail_task/model/task.dart'
    as DetailTask;
import 'package:todo_list_application/app/domain/task_board/model/task.dart'
    as TaskBoard;

extension TaskBoardTaskMapper on TaskBoard.Task {
  DetailTask.Task toDetailModel() {
    return DetailTask.Task(
      title: title,
      content: content,
      date: date,
      assignee: assignee,
    );
  }
}

extension DetailTaskTaskMapper on DetailTask.Task {
  TaskBoard.Task toTaskBoardModel() {
    return TaskBoard.Task(
      title: title,
      content: content,
      date: date,
      assignee: assignee,
    );
  }
}
