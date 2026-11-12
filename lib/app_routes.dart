import 'package:classico_cmd/details_page.dart';
import 'package:classico_cmd/setting_page.dart';
import 'package:classico_cmd/splash_page.dart';
import 'package:classico_cmd/wallpaper_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String pageSplashRoute = "/";
  static const String pageHomeRoute = "/home";
  static const String pageDetailRoute = "/detail";
  static const String pageSettingRoute = "/settings";

  static Map<String, WidgetBuilder> mRoutes = {
    pageSplashRoute: (_) => SplashPage(),
    pageHomeRoute: (_) => WallpaperPage(),
    pageDetailRoute: (_) => DetailPage(),
    pageSettingRoute: (_) => SettingPage(),
  };
}
