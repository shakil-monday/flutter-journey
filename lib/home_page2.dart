import 'package:classico_cmd/login_page2.dart';
import 'package:classico_cmd/splash_page2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          ElevatedButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setBool(SplashPage2.loginKey, false);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage2()),
              );
            },
            child: Text("Logout"),
          ),
        ],
      ),
      body: Center(child: Text("Home", style: TextStyle(fontSize: 21))),
    );
  }
}
