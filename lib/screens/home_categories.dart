import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../utils/colors.dart';
import '../models/dummy_data.dart';

class HomeCategories extends StatelessWidget {
  static String routeHomeCategories = '/homeCategories';
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: gColor,
        child: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES
              .map((catData) => CategoryItem(
                    title: catData.title,
                    color: catData.color,
                    id: catData.id,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
