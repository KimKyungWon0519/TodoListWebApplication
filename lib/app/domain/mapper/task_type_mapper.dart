import 'package:todo_list_application/app/domain/task_board/model/task_type.dart'
    as TaskBoard;
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart'
    as DetailTask;

extension TaskBoardTaskTypeMapper on TaskBoard.TaskType {
  DetailTask.TaskType toDetailModel() {
    return switch (this) {
      TaskBoard.TaskType.toDo => DetailTask.TaskType.toDo,
      TaskBoard.TaskType.urgent => DetailTask.TaskType.urgent,
      TaskBoard.TaskType.inProgress => DetailTask.TaskType.inProgress,
      TaskBoard.TaskType.completed => DetailTask.TaskType.completed,
    };
  }
}

extension DetailTaskTaskTypeMapper on DetailTask.TaskType {
  TaskBoard.TaskType toTaskBoardModel() {
    return switch (this) {
      DetailTask.TaskType.toDo => TaskBoard.TaskType.toDo,
      DetailTask.TaskType.urgent => TaskBoard.TaskType.urgent,
      DetailTask.TaskType.inProgress => TaskBoard.TaskType.inProgress,
      DetailTask.TaskType.completed => TaskBoard.TaskType.completed,
    };
  }
}
