import 'package:todo_list_application/app/domain/task_board/model/task.dart';
import 'package:todo_list_application/app/domain/task_board/model/task_type.dart';
import 'package:todo_list_application/app/domain/task_board/model/tasks_with_type.dart';

List<TasksWithType> initialData = [
  TasksWithType(
    type: TaskType.toDo,
    tasks: [
      Task(
        title: '할 일 - 1',
        content: '',
        date: DateTime.now(),
        assignee: '담당자',
      ),
      Task(
        title: '운동하기',
        content: '운동하기',
        date: DateTime.now(),
        assignee: '담당자.1',
      ),
      Task(
        title: '밥먹기',
        content: '밥먹기',
        date: DateTime.now(),
        assignee: '담당자.3',
      ),
    ],
  ),
  TasksWithType(
    type: TaskType.urgent,
    tasks: [
      Task(
        title: '공부하기',
        content: '공부하기',
        date: DateTime.now(),
        assignee: '담당자.12',
      ),
      Task(
        title: '책읽기',
        content: '책읽기',
        date: DateTime.now(),
        assignee: '담당자.34',
      ),
    ],
  ),
  TasksWithType(
    type: TaskType.inProgress,
    tasks: [
      Task(
        title: '영화보기',
        content: '영화보기',
        date: DateTime.now(),
        assignee: '담당자1',
      ),
    ],
  ),
  TasksWithType(
    type: TaskType.completed,
    tasks: [],
  ),
];
