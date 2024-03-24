import 'package:flutter/material.dart';

class WeatherBottomNavBar extends StatelessWidget {
  const WeatherBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny_rounded), label: "Forecast Screen")
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/");
            break;
          case 1:
            Navigator.pushNamed(context, "/forecast");
            break;
          default:
        }
      },
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.purple,
    );
  }
}
