/*Number Classifier

From a list of user-input integers,
classify each number as positive, negative, or zero using a loop.
Store classified data in a Map<String, List<int>>. Print each category.*/



import 'dart:io';

void main() {
  // Initialize the classification map
  Map<String, List<int>> numberClassification = {
    'Positive': [],
    'Negative': [],
    'Zero': [],
  };

  print('Enter numbers separated by spaces (e.g., 1 -2 3 0):');
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('No input provided.');
    return;
  }

  // Process each number in the input
  for (String numStr in input.split(' ')) {
    try {
      int number = int.parse(numStr);

      if (number > 0) {
        numberClassification['Positive']!.add(number);
      } else if (number < 0) {
        numberClassification['Negative']!.add(number);
      } else {
        numberClassification['Zero']!.add(number);
      }
    } catch (e) {
      print('Skipping invalid input: "$numStr"');
    }
  }

  // Print the classification results
  print('\nNumber Classification:');
  numberClassification.forEach((category, numbers) {
    print('$category numbers: $numbers');
  });
}