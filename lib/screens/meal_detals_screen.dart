import 'package:app_recetas/models/dummy_data.dart';
import 'package:app_recetas/utils/colors.dart';
import 'package:flutter/material.dart';

class MealDetalsScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        style:
            TextStyle(color: pColor, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget builContainerSteps(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: pCColor,
          border: Border.all(color: pColor),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      height: 200,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pColor,
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Container de la imagen
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            //Contenedor del titulo Ingredientes
            buildSectionTitle(
              context,
              'Ingredientes',
            ),
            builContainerSteps(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: pCColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Pasos para la Elaboración'),
            builContainerSteps(
              ListView.builder(
                  itemBuilder: (ctx, index) => Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text(
                                '# ${(index + 1)}',
                                style: TextStyle(color: pColor),
                              ),
                            ),
                            title: Text(selectedMeal.steps[index]),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.grey,
                            
                          )
                        ],
                      ),
                  itemCount: selectedMeal.steps.length),
            ),
          ],
        ),
      ),
    );
  }
}
