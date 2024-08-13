import 'package:uuid/uuid.dart';

// create a unique id for each expense with the help of the uuid package.
const uuid = Uuid();

class Expense {
  // Constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
  // Properties
  final String id;
  final String title;
  final double amount; // 1.99
  final DateTime date;
}
