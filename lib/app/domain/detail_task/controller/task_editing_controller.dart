import 'package:todo_list_application/app/domain/detail_task/model/task.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart';

class TaskEditingController {
  TaskType _taskType = TaskType.toDo;
  Task _task = Task.empty();

  set taskType(TaskType newValue) => _taskType = newValue;
  TaskType get taskType => _taskType;

  Task get task => _task;

  set title(String title) => _task = _task.copyWith(title: title);
  String get title => _task.title;

  set content(String content) => _task = _task.copyWith(content: content);
  String get content => _task.content;

  set assignee(String assignee) => _task = _task.copyWith(assignee: assignee);
  String get assignee => _task.assignee;

  set date(DateTime date) => _task.copyWith(date: date);
  DateTime get date => _task.date;

  bool isEmptyTask() {
    return _task.title.trim().isEmpty || _task.assignee.trim().isEmpty;
  }
}
