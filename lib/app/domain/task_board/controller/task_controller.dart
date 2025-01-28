import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/task_board/model/tasks_with_type.dart';

class TaskController extends GetxController {
  late final RxList<TasksWithType> _tasks;

  TaskController({
    required List<TasksWithType> initialData,
  }) : _tasks = initialData.obs;

  RxList<TasksWithType> get tasksObs => _tasks;
}
