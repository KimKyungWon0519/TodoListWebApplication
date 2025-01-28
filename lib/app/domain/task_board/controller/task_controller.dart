import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';
import 'package:todo_list_application/app/domain/task_board/model/tasks_with_type.dart';

class TaskController extends GetxController {
  final RxList<TasksWithType> _tasks = List<TasksWithType>.generate(
    TaskType.values.length,
    (index) => TasksWithType(
      type: TaskType.values[index],
      tasks: [],
    ),
  ).obs;

  RxList<TasksWithType> get tasksObs => _tasks;
}
