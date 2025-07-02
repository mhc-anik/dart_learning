/*
আমাদের একটি শিক্ষার্থীদের লিস্ট দেওয়া আছে। প্রত্যেক শিক্ষার্থীর একটি নাম এবং স্কোরের লিস্ট আছে।

আমাদের কাজ:
    ==> প্রত্যেক শিক্ষার্থীর গড় স্কোর বের করতে হবে (দশমিকের পর ২ ঘর পর্যন্ত)
    ==> ফলাফল একটি ম্যাপে সংরক্ষণ করতে হবে, যেখানে শিক্ষার্থীর নাম হবে কী এবং তাদের গড় স্কোর হবে ভ্যালু
    ==> গড় স্কোরের অধঃক্রমে (উচ্চ থেকে নিম্ন) ম্যাপটি সাজাতে হবে এবং চূড়ান্ত ফলাফল প্রিন্ট করতে হবে
 */


void main() {

  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String, double> averages = calculateStudentAverages(students);

  printSortedAverages(averages);
}

double calculateAverage(List<int> scores) {
  if (scores.isEmpty) return 0.0;

  int sum = scores.reduce((a, b) => a + b);
  double average = sum / scores.length;
  return double.parse(average.toStringAsFixed(2));
}

Map<String, double> calculateStudentAverages(List<Map<String, dynamic>> students) {
  Map<String, double> averages = {};

  for (var student in students) {
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);
    double average = calculateAverage(scores);
    averages[name] = average;
  }

  return averages;
}

void printSortedAverages(Map<String, double> averages) {
  var sortedEntries = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAverages = Map.fromEntries(sortedEntries);
  print(sortedAverages);
}