import 'package:todo_list_application/app/domain/detail_task/model/task.dart';
import 'package:todo_list_application/app/domain/detail_task/model/task_type.dart';

class TaskEditingController {
  TaskType _taskType = TaskType.toDo;
  late Task _task;
  bool _isEditing = false;
  bool _willSave = false;

  void initalValue(TaskType type, Task? task) {
    _taskType = type;

    _task = task ?? Task.empty();
  }

  set taskType(TaskType newValue) {
    _taskType = newValue;

    _isEditing = true;
  }

  TaskType get taskType => _taskType;

  Task get task => _task;

  set title(String title) => _updateTask(_task.copyWith(title: title));
  String get title => _task.title;

  set content(String content) => _updateTask(_task.copyWith(content: content));
  String get content => _task.content;

  set assignee(String assignee) =>
      _updateTask(_task.copyWith(assignee: assignee));
  String get assignee => _task.assignee;

  set date(DateTime date) => _updateTask(_task.copyWith(date: date));
  DateTime get date => _task.date;

  bool get isEditing => _isEditing;
  bool get willSave => _willSave;

  bool isEmptyTask() {
    return _task.title.trim().isEmpty || _task.assignee.trim().isEmpty;
  }

  void _updateTask(Task task) {
    _task = task;

    _isEditing = true;
  }

  void saveTask() {
    _willSave = true;

    _isEditing = false;
  }
}
