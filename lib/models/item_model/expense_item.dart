import 'package:wallet_ease/models/category_model/category.dart';

class ExpenseItem {
  final String id;
  final String name;
  final double expense;
  final ExpenseCategory category;
  final DateTime dateTime;

  ExpenseItem(
      {required this.id,
      required this.dateTime,
      required this.name,
      required this.expense,
      required this.category});
}
