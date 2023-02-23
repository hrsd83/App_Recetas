import 'package:app_recetas/screens/screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(0),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: pColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile('Comida', Icons.restaurant, () {
            // Navigator.of(context).pushNamed(CategoryMealsScreen.routeName);
            Navigator.of(context).pushReplacementNamed(TapsScreen.routeName);
          }),
          const Divider(
            color: pColor,
            height: 10,
          ),
          buildListTile('Configuración', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }),
          const Divider(
            color: pColor,
            height: 10,
          )
        ],
      ),
    );
  }

//Metodo del menu Drawer
  ListTile buildListTile(String title, IconData icon, tapHandler) {
    return ListTile(
      iconColor: pColor,
      textColor: pColor,
      leading: Icon(
        icon,
        size: 50,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontFamily: 'Roboto', fontSize: 25, fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }
}
