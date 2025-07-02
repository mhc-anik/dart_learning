main(){
  Set<String> name = {'Anik','Rumi', 'Manha'};
  Set<String> name1 = {'Anik','Rumi', 'Abit','Isna'};

  print(name);

  /// name.add('Abit');
  /// name.add('Isna');

  print(name);
  print(name.contains('Anik'));

  print("Here Intersection : ${name.intersection(name1)}");
  print("Here is Union     : ${name.union(name1)}");

}