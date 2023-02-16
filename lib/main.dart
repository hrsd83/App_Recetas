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
      title: 'Material App',
      home: PageOnboarding(),
      routes: {
        'home_categories': (context) {
          return HomeCategories();
        },
      },
    );
  }
}
