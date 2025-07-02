main(){

  Map<String, String> person ={
    'Name' : 'Anik',
    'Age' : '37',
    'Address' : 'Uttara',
    'Experince': '15 Years'
  };

  person['Address'] = 'Hobigonj';


  print('What\'s is your name ?');
  print(person);
  print(person['Name']);
  print('My Name is : ${person['Name']}');
  print('My current Address is : ${person['Address']} ');
  print('My current Age is : ${person['Age']}');
  person['Age'] = '38';
  print('My Update Age is : ${person['Age']}');
  print(person.length);
  print(person.entries);
  print(person.isEmpty);
  print(person.keys);
  print(person.values);
  print(person.hashCode);
  print(person.runtimeType);
  print(person.remove('Age'));
  print('My Update Age is : ${person['Age']}');
  person['Age'] = '21';
  print('My Update Age is : ${person['Age']}');
  print(person.containsKey('Age'));
  print(person.cast());
  print(person.containsValue('Anik'));
  ///print(person.map('Name'));

  Map<String, String> person1 ={
    'Name1' : 'Manha',
    'Age1' : '09',
    'Address1' : 'Uttara',
    'Experince1': 'No'
  };

  person.addAll(person1);

  print('------------------------------');

  print(person);
  print(person.keys);
  print(person.values);


}