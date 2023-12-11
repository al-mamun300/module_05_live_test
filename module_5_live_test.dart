
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}


void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice = originalPrice - (originalPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}

void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.50},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.20},
    {'name': 'Mango', 'color': 'red', 'price': 3.00},
  ];

  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}