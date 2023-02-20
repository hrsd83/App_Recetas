import 'package:app_recetas/models/dummy_data.dart';
import 'package:app_recetas/utils/colors.dart';
import 'package:flutter/material.dart';

class MealDetalsScreen extends StatelessWidget {
  static const routeName = '/meal-details';

  const MealDetalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
        backgroundColor: pColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Ingredientes',
                style: TextStyle(color: pColor, fontSize: 25),
              ),
            ),
            Container(
                height: 200,
                width: 300,
                child: ListView.builder(
                    itemBuilder: (ctx, index) => Card(
                          color: pCColor,
                          child: Text(selectedMeal.ingredients[index]),
                        ),
                    itemCount: (selectedMeal.ingredients.length)))
          ],
        ),
      ),
    );
  }
}
