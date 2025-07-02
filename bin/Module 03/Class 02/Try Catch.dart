void main() {
  try {
    List<int> numbers = [1, 2, 3];
    print(numbers[5]); // এখানে 5 নম্বর ইনডেক্স নেই, তাই ত্রুটি ঘটবে।
  } catch (e, s) {
    print('ত্রুটি ঘটেছে: $e');
    print('Stack Trace: $s'); // Stack trace দেখায় কোথায় ত্রুটি ঘটেছে।
  }
}