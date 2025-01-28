import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/task_board/model/task.dart';
import 'package:todo_list_application/app/domain/task_board/model/tasks_with_type.dart';

class TaskController extends GetxController {
  late final RxList<TasksWithType> _tasks;

  TaskController({
    required List<TasksWithType> initialData,
  }) : _tasks = initialData.obs;

  RxList<TasksWithType> get tasksObs => _tasks;

  void changeTask(
      int oldTypeIndex, int oldTaskIndex, int newTypeIndex, int newTaskIndex) {
    Task task = _tasks[oldTypeIndex].tasks.removeAt(oldTaskIndex);

    _tasks[newTypeIndex].tasks.insert(newTaskIndex, task);

    _tasks.refresh();
  }
}
