(String, int) getUserInfo() => ('John Doe', 30);

void main() {
  var (name, age) = getUserInfo();
  print('Name: $name, Age: $age');
}