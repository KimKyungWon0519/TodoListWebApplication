class Task {
  final String title;
  final String content;
  final DateTime date;
  final String assignee;

  const Task({
    required this.title,
    required this.content,
    required this.date,
    required this.assignee,
  });

  factory Task.empty() => Task(
        title: '',
        content: '',
        date: DateTime.now(),
        assignee: '',
      );

  Task copyWith({
    String? title,
    String? content,
    DateTime? date,
    String? assignee,
  }) {
    return Task(
        title: title ?? this.title,
        content: content ?? this.content,
        date: date ?? this.date,
        assignee: assignee ?? this.assignee);
  }
}
