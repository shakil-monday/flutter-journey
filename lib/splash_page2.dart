import 'dart:async';

import 'package:classico_cmd/home_page2.dart';
import 'package:classico_cmd/login_page2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage2 extends StatefulWidget {
  static const loginKey = 'isLogin';

  const SplashPage2({super.key});

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      bool isLoggedIn = prefs.getBool(SplashPage2.loginKey) ?? false;
      Widget nextPage = LoginPage2();

      if (isLoggedIn) {
        nextPage = HomePage2();
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => nextPage),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 200),
            Text(
              "Classico",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
