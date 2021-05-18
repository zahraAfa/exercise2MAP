import 'package:map_exercise2_pair/models/task.dart';

class Todo {
  String title;
  List<Task> tasks;

  Todo({this.title, this.tasks});

  // The percentage of completed tasks.
  double get percent {
    return 100 *
        tasks.fold(
            0,
            (previousValue, element) =>
                element.completed ? previousValue + 1 : previousValue) /
        tasks.length;
  }
}
