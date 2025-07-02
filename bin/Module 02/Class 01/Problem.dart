main() {

  Map<String, String> person = {
    'Name': 'Anik',
    'Age': '37',
    'Address': 'Uttara',
    'Experince': 'No'
  };

  var keyPerson = person.keys.toList();
  var valuePerson = person.values.toList();


  print(person);
  print('-------------------------');
  print(person.keys);
  print(keyPerson);
  print(keyPerson[1]);

  print('-------------------------');

  print(person.values);
  print(valuePerson);
  
  /// print(person.map(convert))






}