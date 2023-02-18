import 'package:flutter/material.dart';
import '../utils/colors.dart';
import './dummy_categories.dart';
import 'category_item.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: pColor,
        title: const Text('Comida Gourmet'),
      ),
      body: Container(
        color: gColor,
        child: GridView(
          padding: EdgeInsets.all(15),
          children: dummyCategories
              .map((catData) =>
                  CategoryItem(title: catData.title, color: catData.color))
              .toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
