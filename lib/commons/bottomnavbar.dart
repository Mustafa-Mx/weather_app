import 'package:flutter/material.dart';

class WeatherBottomNavBar extends StatefulWidget {
  const WeatherBottomNavBar({super.key});

  @override
  State<WeatherBottomNavBar> createState() => _WeatherBottomNavBarState();
}

class _WeatherBottomNavBarState extends State<WeatherBottomNavBar> {
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny_rounded), label: "Forecast Screen"),
        BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded), label: "About")
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/");
            break;
          case 1:
            Navigator.pushNamed(context, "/forecast");
            break;
          case 2:
            Navigator.pushNamed(context, "/about");
            break;
          default:
        }
      },
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.purple,
    );
  }
}
