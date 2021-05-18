class Task {
  String title;
  bool completed;

  Task({this.title, this.completed = false});

  Task.copy(Task from) : this(title: from.title, completed: from.completed);
}
