import 'package:app_recetas/screens/favorite_screen.dart';
import 'package:app_recetas/screens/home_categories.dart';
import 'package:app_recetas/utils/colors.dart';
import 'package:app_recetas/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class TapsScreen extends StatefulWidget {
  static String routeName = '/tapsScreen';

  const TapsScreen({super.key});

  @override
  State<TapsScreen> createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeCategories(), 'title': 'categories'},
    {
      'page': const FavoriteScreen(),
      'title': 'Tus Favoritos',
    }
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pColor,
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: pColor,
        unselectedItemColor: pColor,
        selectedItemColor: pColor,
        unselectedLabelStyle: TextStyle(fontSize: 16),
        iconSize: 30,
        selectedLabelStyle: TextStyle(fontSize: 14),
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined, color: Colors.black),
            label: 'Categoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined, color: Colors.black),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
