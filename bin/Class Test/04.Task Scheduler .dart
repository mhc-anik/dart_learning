/*Task Scheduler

Accept tasks from the user with priority levels.
Store them in a list of maps.
Sort tasks by priority and show only tasks that are not marked "done".
Use null safety to handle optional fields.*/



import 'dart:io';

class TaskScheduler {
  List<Map<String, dynamic>> tasks = [];

  void addTask() {
    print('\nAdd a new task');

    // Get task name
    print('Enter task name:');
    String? name = stdin.readLineSync();
    while (name == null || name.isEmpty) {
      print('Task name cannot be empty. Please enter again:');
      name = stdin.readLineSync();
    }

    // Get priority with validation
    int? priority;
    while (priority == null) {
      print('Enter priority (1-5, where 5 is highest):');
      String? input = stdin.readLineSync();
      priority = int.tryParse(input ?? '');

      if (priority == null || priority < 1 || priority > 5) {
        print('Invalid priority. Please enter a number between 1 and 5.');
        priority = null;
      }
    }

    // Create task map with optional 'done' field
    Map<String, dynamic> task = {
      'name': name,
      'priority': priority,
      'done': false, // Default to not done
    };

    tasks.add(task);
    print('Task added successfully!');
  }

  void markTaskDone() {
    if (tasks.isEmpty) {
      print('No tasks available.');
      return;
    }

    printPendingTasks();

    print('\nEnter the index of the task to mark as done:');
    String? input = stdin.readLineSync();
    int? index = int.tryParse(input ?? '');

    if (index == null || index < 0 || index >= tasks.length) {
      print('Invalid index.');
      return;
    }

    // Using null-aware operator to handle potential null
    tasks[index]['done'] = true;
    print('Task "${tasks[index]['name']}" marked as done.');
  }

  void printPendingTasks() {
    // Filter out done tasks and sort by priority (highest first)
    List<Map<String, dynamic>> pendingTasks = tasks.where((task) => !(task['done'] ?? false)).toList();

    pendingTasks.sort((a, b) => (b['priority'] as int).compareTo(a['priority'] as int));

    if (pendingTasks.isEmpty) {
      print('No pending tasks.');
      return;
    }

    print('\nPending Tasks (sorted by priority):');
    print('--------------------------------');
    for (int i = 0; i < pendingTasks.length; i++) {
      print('[$i] ${pendingTasks[i]['name']} - Priority: ${pendingTasks[i]['priority']}');
    }
  }

  void run() {
    print('Task Scheduler');
    print('--------------');

    while (true) {
      print('\nOptions:');
      print('1. Add Task');
      print('2. Mark Task as Done');
      print('3. View Pending Tasks');
      print('4. Exit');
      print('Enter your choice:');

      String? choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          addTask();
          break;
        case '2':
          markTaskDone();
          break;
        case '3':
          printPendingTasks();
          break;
        case '4':
          print('Exiting Task Scheduler. Goodbye!');
          return;
        default:
          print('Invalid choice. Please try again.');
      }
    }
  }
}

void main() {
  TaskScheduler scheduler = TaskScheduler();
  scheduler.run();
}