import 'package:flutter/material.dart';

import 'models/home_categories.dart';
import 'widgets/page_onboarding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleLarge: const TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ))),
      title: 'Material App',
      home: HomeCategories(),
      routes: {
        'home_categories': (context) {
          return HomeCategories();
        },
      },
    );
  }
}
