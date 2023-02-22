import 'package:app_recetas/utils/colors.dart';
import 'package:app_recetas/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filter';
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pColor,
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Container(
          child: Text('Hola filtros'),
        ),
      ),
    );
  }
}
