/*Shopping Cart with Discount

Build a cart where users add product name and price.
When user types "done", calculate total.
If total > 1000, apply a 10% discount.
Handle possible invalid inputs (non-numeric price) with exception handling.*/


import 'dart:io';

void main() {
  List<Map<String, dynamic>> cart = [];
  double total = 0;

  print('🛒 Welcome to Dart Cart! Type "done" when finished.\n');

  while (true) {
    stdout.write('Enter product name: ');
    String? name = stdin.readLineSync();

    if (name == null || name.toLowerCase() == 'done') break;

    double? price;
    while (true) {
      stdout.write('Enter price for "$name": ');
      String? input = stdin.readLineSync();
      try {
        if (input == null) throw FormatException('Null input');
        price = double.parse(input);
        if (price < 0) throw FormatException('Negative price');
        break; // valid price entered
      } catch (e) {
        print('⚠️  Invalid price. Please enter a positive number.');
      }
    }

    cart.add({'name': name, 'price': price});
    total += price!;
    print('✔️ Added "$name" — ৳${price.toStringAsFixed(2)}\n');
  }

  print('\n🧾 Cart Summary:');
  for (var item in cart) {
    print('- ${item['name']} — ৳${item['price'].toStringAsFixed(2)}');
  }

  if (total > 1000) {
    double discount = total * 0.10;
    double discountedTotal = total - discount;
    print('\n🎉 You spent over ৳1000! A 10% discount of ৳${discount.toStringAsFixed(2)} has been applied.');
    print('💳 Total after discount: ৳${discountedTotal.toStringAsFixed(2)}');
  } else {
    print('\n💳 Total: ৳${total.toStringAsFixed(2)}');
  }

  print('\nThank you for shopping with Dart Cart! 🛍️');
}