import 'dart:io';

void main() {
  String again = 'yes';

  while (again == 'yes') {
    print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

    print('Please enter your pizza size (small, medium, or large):');
    String size = stdin.readLineSync()!;

    print('How many pizzas do you want of $size?');
    int quantity = int.parse(stdin.readLineSync()!);

    int total = 0;

    switch (size) {
      case 'small':
        total = 5 * quantity;
        break;
      case 'medium':
        total = 7 * quantity;
        break;
      case 'large':
        total = 10 * quantity;
        break;
      default:
        print('Invalid pizza size');
    }

    print('Total payment: $total USD');

    print('Do you want to order again? (yes/no)');
    again = stdin.readLineSync()!;
  }

  print('Thank you for ordering!');
}
