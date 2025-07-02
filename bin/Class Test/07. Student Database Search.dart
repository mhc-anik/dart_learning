/*Student Database Search

Create a student record manager using
List<Map<String, dynamic>>. Include name, id, age.
Let the user search by name or id and return
the matching student or show error using try-catch.*/

import 'dart:io';

void main() {
  // Initialize student database
  List<Map<String, dynamic>> students = [
    {'id': '001', 'name': 'Alice', 'age': 20},
    {'id': '002', 'name': 'Bob', 'age': 21},
    {'id': '003', 'name': 'Charlie', 'age': 22},
    {'id': '004', 'name': 'Diana', 'age': 19},
  ];

  // Main program loop
  while (true) {
    print('\nStudent Database Menu:');
    print('1. View all students');
    print('2. Search by ID');
    print('3. Search by name');
    print('4. Add new student');
    print('5. Exit');
    stdout.write('Enter your choice (1-5): ');

    try {
      var choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          viewAllStudents(students);
          break;
        case 2:
          searchById(students);
          break;
        case 3:
          searchByName(students);
          break;
        case 4:
          addStudent(students);
          break;
        case 5:
          print('Exiting program...');
          return;
        default:
          print('Invalid choice. Please enter a number between 1-5.');
      }
    } catch (e) {
      print('Error: Please enter a valid number.');
    }
  }
}

void viewAllStudents(List<Map<String, dynamic>> students) {
  if (students.isEmpty) {
    print('No students in the database.');
    return;
  }

  print('\nAll Students:');
  print('ID\tName\t\tAge');
  print('-' * 30);
  for (var student in students) {
    print('${student['id']}\t${student['name']}\t\t${student['age']}');
  }
}

void searchById(List<Map<String, dynamic>> students) {
  stdout.write('Enter student ID to search: ');
  var id = stdin.readLineSync()!.trim();

  try {
    var found = students.firstWhere(
          (student) => student['id'] == id,
      orElse: () => throw 'Student not found',
    );

    print('\nStudent found:');
    print('ID: ${found['id']}');
    print('Name: ${found['name']}');
    print('Age: ${found['age']}');
  } catch (e) {
    print('Error: No student found with ID $id');
  }
}

void searchByName(List<Map<String, dynamic>> students) {
  stdout.write('Enter student name to search: ');
  var name = stdin.readLineSync()!.trim().toLowerCase();

  try {
    var foundStudents = students.where(
            (student) => student['name'].toString().toLowerCase().contains(name));

    if (foundStudents.isEmpty) {
      throw 'No students found';
    }

    print('\nFound ${foundStudents.length} student(s):');
    print('ID\tName\t\tAge');
    print('-' * 30);
    for (var student in foundStudents) {
      print('${student['id']}\t${student['name']}\t\t${student['age']}');
    }
  } catch (e) {
    print('Error: No students found with name containing "$name"');
  }
}

void addStudent(List<Map<String, dynamic>> students) {
  print('\nAdd new student:');

  try {
    stdout.write('Enter student ID: ');
    var id = stdin.readLineSync()!.trim();

    // Check if ID already exists
    if (students.any((student) => student['id'] == id)) {
      throw 'Student with this ID already exists';
    }

    stdout.write('Enter student name: ');
    var name = stdin.readLineSync()!.trim();
    if (name.isEmpty) {
      throw 'Name cannot be empty';
    }

    stdout.write('Enter student age: ');
    var age = int.parse(stdin.readLineSync()!.trim());
    if (age <= 0) {
      throw 'Age must be a positive number';
    }

    students.add({
      'id': id,
      'name': name,
      'age': age,
    });

    print('Student added successfully!');
  } catch (e) {
    print('Error: $e');
  }
}