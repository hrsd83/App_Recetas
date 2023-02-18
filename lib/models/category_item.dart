import 'package:animate_do/animate_do.dart';
import 'package:app_recetas/models/category_meals_screen.dart';
import 'package:flutter/material.dart';

import 'package:app_recetas/utils/colors.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  const CategoryItem({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void selectCategory(BuildContext ctx) {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return CategoryMealsScreen();
      }));
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
