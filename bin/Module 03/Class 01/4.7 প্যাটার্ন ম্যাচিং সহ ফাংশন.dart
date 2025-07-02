String describeNumber(num number) {
  return switch (number) {
    0 => 'Zero',
    > 0 => 'Positive',
    < 0 => 'Negative',
    _ => 'Unknown',
  };
}

void main() {
  print(describeNumber(5)); // Positive
  print(describeNumber(-3)); // Negative
  print(describeNumber(0)); // Zero
}