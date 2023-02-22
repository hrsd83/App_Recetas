import 'package:app_recetas/utils/colors.dart';
import 'package:app_recetas/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filter';
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _gluttenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: pColor,
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                textAlign: TextAlign.center,
                'Ajustar su selección de comida',
                style: TextStyle(
                    color: pColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                      'Libre de Glutten',
                      'Solo incluye comida sin glutten',
                      _gluttenFree, (newValue) {
                    setState(() {
                      _gluttenFree = newValue;
                    });
                  }),
                  _buildSwitchListTile(
                      'Libre de Lactosa',
                      'Solo incluye comida sin lactosa',
                      _lactoseFree, (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  }),
                  _buildSwitchListTile(
                      'Vegetariana',
                      'Solo incluye comida Vegetariana',
                      _vegetarian, (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  }),
                  _buildSwitchListTile(
                      'Vegana',
                      'Solo incluye comida Vegana',
                      _vegan, (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  }),
                ],
              ),
            ),
          ],
        ));
  }

//Metodo para ajustar seleccion de comida
  SwitchListTile _buildSwitchListTile(
      String title, String description, bool currentValue, updateValue) {
    return SwitchListTile(
      value: currentValue,
      title: Text(title),
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }
}
