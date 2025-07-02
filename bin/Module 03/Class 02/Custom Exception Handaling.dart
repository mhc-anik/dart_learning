class ValueException implements Exception {
  final String message;
  ValueException(this.message); // Exception message সংরক্ষণ

  @override
  String toString() => message; // Exception message প্রদর্শন
}

void checkValue(int v) {
  if (v < 5) {
    throw ValueException('Value cannot be less than five');
  } else if (v > 10) {
    throw ValueException('Value must be between 5 and 10');
  } else {
    print('Successful');
  }
}

void main() {
  try {
    checkValue(6);
    //print('No error occurred');
  } catch (e) {
    print('Error: $e');
  }
}