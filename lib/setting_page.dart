import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.settings),
            SizedBox(width: 11),
            Text('Settings'),
          ],
        ),
        actions: [],
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              // Navigator.pop(context);
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            leading: Icon(Icons.arrow_back_rounded),
            title: Text("Back to Home"),
          ),
          ListTile(leading: Icon(Icons.person), title: Text("Profile")),
          ListTile(
            leading: Icon(Icons.power_settings_new_outlined),
            title: Text("Logout"),
          ),
          SwitchListTile(
            value: true,
            onChanged: (value) {},
            title: Text('Dark Mode'),
            subtitle: Text("Enable to change the theme"),
          ),
        ],
      ),
    );
  }
}
