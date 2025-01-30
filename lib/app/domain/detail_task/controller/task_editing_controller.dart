import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart';

class TaskEditingController {
  TaskType _taskType = TaskType.toDo;

  set taskType(TaskType newValue) => _taskType = newValue;
}
