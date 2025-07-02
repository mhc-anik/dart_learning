main(){

  /// Higher Order Function

  /// Example 1
  List<int> number = [1,2,3,4,5];

  var squired = number.map((number) => number * number);
  print(squired.toList());

  var even = number.where((number) => number % 2 ==0);
  print(even.toList());


  /// Example 2

  greet (String name){
    print('Hellow $name');
  }
  executeFunction(String name, Function myFunction){
    myFunction(name);
  }
  executeFunction('Anik', greet);

  


}