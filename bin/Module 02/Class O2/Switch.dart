void main() {
  // ফাংশন কল উদাহরণ
  double gpa = getGPA('A');
  print('প্রাপ্ত GPA: $gpa'); // 4.0
}

double getGPA(String grade) {
  return switch (grade) {
    'A' => 4.0,
    'B' => 3.0,
    'C' => 2.0,
    'D' => 1.0,
    'F' => 0.0,
    _ => throw ArgumentError('অবৈধ গ্রেড'),
  };
}