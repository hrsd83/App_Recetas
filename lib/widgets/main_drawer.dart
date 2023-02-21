import 'dart:ffi';

import 'package:app_recetas/utils/colors.dart';
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
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: pColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Comida', Icons.restaurant),
          buildListTile('Configuración', Icons.settings),
        ],
      ),
    );
  }

//Metodo del menu Drawer
  ListTile buildListTile(String title, IconData icon) {
    return ListTile(
      iconColor: pColor,
      textColor: pColor,
      leading: Icon(
        icon,
        size: 50,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'Roboto', fontSize: 25, fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    );
  }
}
