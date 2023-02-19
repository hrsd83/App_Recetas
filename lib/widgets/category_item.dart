// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:app_recetas/utils/colors.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void selectCategory(BuildContext ctx) {
      Navigator.of(context).pushNamed(CategoryMealsScreen.routeName, arguments:{'id': id, 'title': title});
    }

    return FadeInDown(
      child: InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), pCColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
