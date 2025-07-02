String? capitalize(String? name) => name?.toUpperCase();

void main() {
  print(capitalize('bangladesh')); // BANGLADESH
  print(capitalize(null)); // null
}