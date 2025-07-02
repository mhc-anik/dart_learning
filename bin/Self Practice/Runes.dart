main() {
  // For characters outside the BMP (like emoji), you need to use the surrogate pair
  Runes input = Runes('\u{2764}');
  print(String.fromCharCodes(input));
}