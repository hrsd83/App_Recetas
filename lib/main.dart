import 'package:app_recetas/screens/category_meals_screen.dart';
import 'package:app_recetas/screens/meal_detals_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_categories.dart';
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
      // home: HomeCategories(),
      routes: {
        '/' : (ctx) => PageOnboarding(),
        HomeCategories.routeHomeCategories : (ctx) =>  const HomeCategories(),

        CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen(),

     MealDetalsScreen.routeName : (ctx) => MealDetalsScreen(),
      },
    );
  }
}
