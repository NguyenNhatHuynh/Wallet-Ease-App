import 'package:flutter/material.dart';
import 'package:wallet_ease/database/finance_db.dart';
import 'package:wallet_ease/models/user_model/user.dart';
import 'package:wallet_ease/styles/text_style.dart';

class UserAllowance extends StatefulWidget {
  const UserAllowance({super.key});

  @override
  State<UserAllowance> createState() => _UserAllowanceState();
}

class _UserAllowanceState extends State<UserAllowance> {
  User? user;

  @override
  void initState() {
    super.initState();
    _fetchUser();
  }

  Future<void> _fetchUser() async {
    final db = FinanceDB();
    final fetchUser = await db.fetchUser();
    setState(() {
      user = fetchUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          user?.currency ?? '...',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 8,
        ),
        SecondaryText(words: user?.allowance.toString() ?? '...', size: 24, maxLines: 1)
      ],
    );
  }
}
