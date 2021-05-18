// Create some mock data of a list of todos, as well as mock data of task list for each todo item.
// Create your own mock data.

import 'todo.dart';
import 'task.dart';

List<Todo> mockData = [
  Todo(
    title: "MAP Project",
    tasks: [
      Task(title: "Deliverable #1: Project Proposal and Deign."),
      Task(title: "Deliverable #2: Prototype 1."),
      Task(title: "Deliverable #3: Prototype 2."),
      Task(title: "Deliverable #4: Backend."),
      Task(title: "Deliverable #5: Release version."),
    ],
  ),
  Todo(
    title: "Exercise 4: Integrating with Backend",
    tasks: [
      Task(
        title: "Submission.",
        completed: true,
      ),
    ],
  ),
  Todo(
    title: "Exercise 3: HTTP and JSON",
    tasks: [
      Task(
        title: "Submission.",
        completed: true,
      ),
    ],
  ),
  Todo(
    title: "Exercise 2: Basic Navigations",
    tasks: [
      Task(
        title: "Define model classes and create some mock data.",
        completed: true,
      ),
      Task(
        title:
            "Build the looks of both screens dynamically – with the mock data.",
        completed: true,
      ),
      Task(
        title:
            "Implement the onTap in the first screen to Navigate to the second screen.",
      ),
      Task(
        title:
            "Implement the onPressed of the “Update” button in the second screen to back to the first screen.",
      ),
      Task(
        title: "Implement the onTap in the second screen to toggle a task.",
      ),
      Task(
        completed: true,
        title:
            "Implement the onLongPress in the second screen to remove a task.",
      ),
      Task(
        completed: true,
        title: "Add a “Cancel” operation in the second screen.",
      ),
      Task(
        completed: true,
        title: "Submission.",
      ),
    ],
  ),
  Todo(
    title: "Week 9 - Monday, HTTP and JSON",
    tasks: [
      Task(
        title: "Quick Check Quiz for Attendance.",
        completed: true,
      ),
    ],
  ),
  Todo(
    title: "Exercise 1: Basic State Management with Stateful Widgets",
    tasks: [
      Task(
        title: "UI built with stateless widgets.",
        completed: true,
      ),
      Task(
        title: "UI built with statefull widget.",
        completed: true,
      ),
      Task(
        title: "Adding functionality to the buttons.",
        completed: true,
      ),
      Task(
        title: "Adding functionality to the sliders.",
        completed: true,
      ),
      Task(
        title: "Code refactoring 1.",
        completed: true,
      ),
      Task(
        title: "Code refactoring 2.",
        completed: true,
      ),
      Task(
        title: "Submission.",
        completed: true,
      ),
    ],
  ),
  Todo(
    title: "Tutorial 3.3: Navigation and Routing : Named Routes",
    tasks: [
      Task(
        title: "Define and handle the named routes.",
        completed: true,
      ),
      Task(
          title: "Navigate and pass data to the second screen.",
          completed: true),
      Task(
        title: "Return from the second screen with result.",
        completed: true,
      ),
      Task(
        title: "Refactor routing code.",
        completed: true,
      ),
      Task(
        title: "Reorganize the UI built.",
        completed: true,
      ),
      Task(
        title: "Submission.",
        completed: true,
      ),
    ],
  ),
  Todo(
    title: "Tutorial 3.2: Navigation and Routing : Basic Navigation",
    tasks: [
      Task(
        title: "Create the screen skeletons.",
        completed: true,
      ),
      Task(
        title: "Define model classes and mock data.",
        completed: true,
      ),
      Task(
        title: "Build the screens with dynamic content.",
        completed: true,
      ),
      Task(
        title: "Navigate and pass data to the second screen.",
        completed: true,
      ),
      Task(
        title: "Return from the second screen with result.",
        completed: true,
      ),
      Task(
        title: "Make “Cancel” button functional.",
        completed: true,
      ),
      Task(
        title: "Disable AppBar’s and phone’s back buttons.",
        completed: true,
      ),
      Task(
        title: "Submission.",
        completed: true,
      ),
    ],
  ),
];
