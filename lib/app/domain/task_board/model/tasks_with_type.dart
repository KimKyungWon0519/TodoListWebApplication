import 'package:todo_list_application/app/domain/task_board/model/task.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';

class TasksWithType {
  final TaskType type;
  final List<Task> tasks;

  const TasksWithType({
    required this.type,
    required this.tasks,
  });
}
