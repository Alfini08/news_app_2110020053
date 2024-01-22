import 'package:flutter/material.dart';
// import 'package:news_app_2110020053/main.dart';
// import 'package:news_app_2110020053/components/customListTile.dart';
// import 'package:news_app_2110020053/model/article_model.dart';
// import 'package:news_app_2110020053/services/api_service.dart';
import 'package:news_app_2110020053/pages/menu.dart';
import 'package:news_app_2110020053/pages/splashscreen_view.dart';
import 'package:news_app_2110020053/pages/otomotive_page.dart';
import 'package:news_app_2110020053/pages/sports_page.dart';
import 'package:news_app_2110020053/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2110020053',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/menu': (context) => Heading(),
        '/profile': (context) => ProfileScreen(),
        '/profile2': (context) => OtomotivePage(),
        '/page3': (context) => SportsPage(),
      },
    );
  }
}
