main(){


  /// tarnary operator
  String color = 'White';
  var result = color == 'Red' ? 'Color is Red' : 'this is Unknow Color';
  print(result);

  /// null value
  int? age;
  var age1 = age ?? 37;
  print(age1);

}