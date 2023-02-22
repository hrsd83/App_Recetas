// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:app_recetas/models/meal.dart';
import 'package:app_recetas/utils/colors.dart';

import '../screens/meal_detals_screen.dart';
//Propiedades parta mostrar la comida

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final Function removeItem;
  const MealItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.removeItem,
  }) : super(key: key);
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Desafiante';
        break;
      case Complexity.Hard:
        return 'Dificil';
        break;
      default:
        return 'Desconocido';
    }
  }

  String get AffordabilityText {
    switch (affordability) {
      case Affordability.Affodable:
        return 'Accesible';
        break;
      case Affordability.Pricey:
        return 'Cara';
        break;
      case Affordability.Luxurious:
        return 'Dificil';
        break;
      default:
        return 'Desconocido';
    }
  }
//Remover una receta
  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MealDetalsScreen.routeName, arguments: id)
        .then((result) {
      if (result != null) {
        removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    width: 315,
                    color: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      textAlign: TextAlign.center,
                      title,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: pColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.schedule_outlined,
                            color: Colors.white),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '$duration min',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.work_history,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(complexityText,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          AffordabilityText,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
