import 'package:classico_cmd/notes_exp/home_page.dart';
import 'package:classico_cmd/splash_page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: SettingPage(),
      // home: WallpaperPage(),
      // home: SignUpPage(),
      // home: LoginPage(),
      // home: ProductList(),
      // home: ProductDetail(),
      // home: HomePage2(),
      // home: SplashPage2(),
      // home: LoginPage2(),
      home: HomePage(),

      // initialRoute: "/",
      // routes: {
      //   "/": (_) => WallpaperPage(),
      //   "/detail": (_) => DetailPage(),
      //   "/settings": (_) => SettingPage(),
      // },

      // initialRoute: AppRoutes.pageSplashRoute,
      // routes: AppRoutes.mRoutes,
    );
  }
}
