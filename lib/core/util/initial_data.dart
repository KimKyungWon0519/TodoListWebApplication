import 'package:todo_list_application/app/domain/task_board/model/task.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';
import 'package:todo_list_application/app/domain/task_board/model/tasks_with_type.dart';

List<TasksWithType> initialData = List.generate(
  TaskType.values.length,
  (typeIndex) => TasksWithType(
    type: TaskType.values[typeIndex],
    tasks: List.generate(
      TaskType.values.length - typeIndex,
      (taskIndex) => Task(
          title: TaskType.values[typeIndex].name * (taskIndex + 1),
          content: '내용' * 10,
          date: DateTime.now(),
          assignee: '${TaskType.values[typeIndex].name} - $taskIndex'),
    ),
  ),
);
