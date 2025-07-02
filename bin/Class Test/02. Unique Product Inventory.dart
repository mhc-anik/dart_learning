/* Unique Product Inventory
Build an inventory system where users can input product names (Strings)
and their quantities. Ensure no duplicate product names using appropriate
collection types. Show all products with quantity greater than 10. */

import 'dart:io';

void main() {

  final inventory = <String, int>{};

  while (true) {
    print('\nInventory System Menu:');
    print('1. Add Product');
    print('2. Show All Products');
    print('3. Show Products with Quantity > 10');
    print('4. Exit');
    stdout.write('Enter your choice: ');

    final choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addProduct(inventory);
        break;
      case '2':
        displayAllProducts(inventory);
        break;
      case '3':
        displayHighQuantityProducts(inventory);
        break;
      case '4':
        print('Exiting inventory system...');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void addProduct(Map<String, int> inventory) {
  stdout.write('Enter product name: ');
  final name = stdin.readLineSync()?.trim() ?? '';

  if (name.isEmpty) {
    print('Product name cannot be empty.');
    return;
  }

  if (inventory.containsKey(name)) {
    print('Product "$name" already exists in inventory.');
    return;
  }

  stdout.write('Enter product quantity: ');
  final quantityInput = stdin.readLineSync() ?? '';

  try {
    final quantity = int.parse(quantityInput);
    if (quantity < 0) {
      print('Quantity cannot be negative.');
      return;
    }

    inventory[name] = quantity;
    print('Product "$name" added with quantity $quantity.');
  } catch (e) {
    print('Invalid quantity. Please enter a whole number.');
  }
}

void displayAllProducts(Map<String, int> inventory) {
  if (inventory.isEmpty) {
    print('Inventory is empty.');
    return;
  }

  print('\nAll Products in Inventory:');
  inventory.forEach((name, quantity) {
    print('$name: $quantity');
  });
}

void displayHighQuantityProducts(Map<String, int> inventory) {
  final highQuantityProducts = inventory.entries.where((entry) => entry.value > 10);

  if (highQuantityProducts.isEmpty) {
    print('No products with quantity greater than 10.');
    return;
  }

  print('\nProducts with Quantity > 10:');
  highQuantityProducts.forEach((entry) {
    print('${entry.key}: ${entry.value}');
  });
}