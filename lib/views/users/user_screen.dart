import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ease/styles/buttons.dart';
import 'package:wallet_ease/views/widgets/allowance_widgets/allowance_list.dart';
import 'package:wallet_ease/views/widgets/user_widgets/profile_picture.dart';
import 'package:wallet_ease/views/widgets/user_widgets/username.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  void _refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ProfilePicture(
              key: UniqueKey(),
              size: MediaQuery.sizeOf(context).width > 700
                  ? MediaQuery.sizeOf(context).width * .12
                  : MediaQuery.sizeOf(context).width * .2,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .05,
            child: Username(
              key: UniqueKey(),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => Settings(
                        refreshed: _refresh,
                      )));
            },
            child: const CustomizeButton(
              text: 'Settings',
              icon: Icons.settings,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            height: 2,
            thickness: 2,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => NewAllowance(
                        onAllowanceAdded: _refresh,
                      )));
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * .45,
              height: MediaQuery.sizeOf(context).height * .05,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                  border: Border.all(width: 4, color: Colors.blue.shade600)),
              child: const Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                    size: 36,
                  ),
                  Expanded(
                    child: AutoSizeText(
                      textAlign: TextAlign.center,
                      'Add Allowance',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          AllowancesList(
            key: UniqueKey(),
            refresh: _refresh,
          )
        ],
      ),
    );
  }
}
