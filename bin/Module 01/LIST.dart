main(){
  List<int> numbers = [1,2,3,4,5];


  
  numbers.add(6);
  print(numbers);
  numbers.addAll([7,8,9]);
  print(numbers);
  numbers.insert(0, 0);
  print(numbers);
  numbers.insertAll(10, [10,11,12,13,14,15]);
  print(numbers);
  print("Number Wise Index Wise : ${numbers[10]}");
  numbers[10]=11;
  numbers[11]=10;
  print(numbers);
  numbers[10]=10;
  numbers[11]=11;
  print(numbers);
  /// Desending Order
  numbers.sort((b,a) => a.compareTo(b));
  print(numbers);

  List<int> A = [1,2,3,2,5,1];
  A.removeRange(1,1);
  print(A);
  
  print("Number List Length : ${numbers.length}");
  
  print(numbers.runtimeType);

}