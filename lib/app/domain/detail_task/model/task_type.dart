enum TaskType {
  toDo('할 일'),
  urgent('급한 일'),
  inProgress('진행 중'),
  completed('완료');

  final String name;

  const TaskType(this.name);
}
