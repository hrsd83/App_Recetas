import 'package:flutter/material.dart';
import 'package:app_recetas/screens/screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      routes: {
        '/': (ctx) => const PageOnboarding(),
        TapsScreen.routeName: (ctx) => const TapsScreen(),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetalsScreen.routeName: (ctx) => const MealDetalsScreen(),
        FilterScreen.routeName: (ctx) => const FilterScreen(),
      },
    );
  }
}
