import 'package:app_recetas/screens/screen.dart';
import 'package:flutter/material.dart';



class TapsScreen extends StatefulWidget {
  static String routeName = '/tapsScreen';

  const TapsScreen({super.key});

  @override
  State<TapsScreen> createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': const HomeCategories(), 'title': 'Categorias'},
    {
      'page': const FavoriteScreen(),
      'title': 'Favoritos',
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
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: pColor,
        unselectedItemColor: pColor,
        selectedItemColor: pColor,
        unselectedLabelStyle: const TextStyle(fontSize: 16),
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined, color: Colors.black),
            label: 'Categorias',
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
