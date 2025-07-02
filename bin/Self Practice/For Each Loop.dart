main (){

  var List1 =
  {
    'Name' : 'Anik',
    'Address' : 'Uttara',
    'House' : 39,
    'Road' : 1,
    'Flat': '2A'
  };

List1.forEach((key,value){
  print('$key is : $value');
});

print('-----------------------');

  List1.forEach((key,value){
    print('$key');
  });

  print('-----------------------');

  List1.forEach((key,value){
    print('$value');
  });


}