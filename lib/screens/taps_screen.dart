import 'package:app_recetas/screens/favorite_screen.dart';
import 'package:app_recetas/screens/home_categories.dart';
import 'package:app_recetas/utils/colors.dart';
import 'package:flutter/material.dart';

class TapsScreen extends StatefulWidget {
  static String routeName = '/tapsScreen';

  const TapsScreen({super.key});

  @override
  State<TapsScreen> createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: pColor,
              title: const Text('Comidas'),
              bottom: const TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category_outlined),
                  text: 'Categorias',
                ),
                Tab(
                  icon: Icon(Icons.star_border_outlined),
                )
              ])),
          body: const TabBarView(children: <Widget>[
            //Se agrega al TabBar la pantalla de categorias y la pantalla de los favoritos
            HomeCategories(),
            FavoriteScreen(),
          ]),
        ));
  }
}
