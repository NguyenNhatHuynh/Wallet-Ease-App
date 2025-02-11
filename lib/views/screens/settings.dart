import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_ease/controllers/userController/changed_profile.dart';
import 'package:wallet_ease/controllers/userController/username_form.dart';
import 'package:wallet_ease/views/widgets/settings_widgets/about_app.dart';
import 'package:wallet_ease/views/widgets/settings_widgets/currency_dropdown.dart';
import 'package:wallet_ease/views/widgets/settings_widgets/help.dart';
import 'package:wallet_ease/views/widgets/user_widgets/profile_picture.dart';
import 'package:wallet_ease/views/widgets/user_widgets/username.dart';

class Settings extends StatefulWidget {
  final VoidCallback refreshed;

  const Settings({super.key, required this.refreshed});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 40,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade600,
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () => showDialog<void>(
                context: context,
                builder: (BuildContext dialogContext) {
                  return Help(ctx: dialogContext);
                }),
            child: Icon(Icons.question_mark),
          ),
        ],
        title: const Text(
          'Settings',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width < 412 ? 120 : 220,
                height: MediaQuery.sizeOf(context).width < 412 ? 120 : 220,
                child: Stack(
                  children: [
                    ProfilePicture(
                      key: UniqueKey(),
                      size: MediaQuery.sizeOf(context).width < 412 ? 50 : 100,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.shade200,
                          radius:
                              MediaQuery.sizeOf(context).width < 412 ? 20 : 30,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/svg/camera.svg',
                              width: MediaQuery.sizeOf(context).width < 412
                                  ? 20
                                  : 40,
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return ChangeProfile(
                                changedProfile: widget.refreshed,
                                refreshed: refresh,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Username(
                    key: UniqueKey(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 16),
                  InkWell(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/svg/pencil.svg',
                          width: 30,
                        ),
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => UsernameForm(
                          onUsernameChanged: widget.refreshed,
                          refreshed: refresh,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Divider(
              height: 4,
              thickness: 4,
              color: Colors.blue.shade500,
            ),
            const SizedBox(height: 32),
            CurrencyDropdown(
              onCurrencyChanged: widget.refreshed,
            ),
            AboutApp(),
          ],
        ),
      ),
    );
  }
}
