import 'package:classico_cmd/app_routes.dart';
import 'package:classico_cmd/details_page.dart';
import 'package:classico_cmd/home_page.dart';
import 'package:classico_cmd/login_page.dart';
import 'package:classico_cmd/product_list_detail/product_detail.dart';
import 'package:classico_cmd/product_list_detail/product_list.dart';
import 'package:classico_cmd/setting_page.dart';
import 'package:classico_cmd/sign_up_page.dart';
import 'package:classico_cmd/wallpaper_page.dart';
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

      // initialRoute: "/",
      // routes: {
      //   "/": (_) => WallpaperPage(),
      //   "/detail": (_) => DetailPage(),
      //   "/settings": (_) => SettingPage(),
      // },

      initialRoute: AppRoutes.pageSplashRoute,
      routes: AppRoutes.mRoutes,
    );
  }
}
