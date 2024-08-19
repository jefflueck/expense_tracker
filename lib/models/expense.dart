import 'package:uuid/uuid.dart';

// create a unique id for each expense with the help of the uuid package.
const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  // Constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  // Properties
  final String id;
  final String title;
  final double amount; // 1.99
  final DateTime date;
  final Category category;
}
