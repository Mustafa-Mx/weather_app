import 'package:a2v1/screens/homescreen.dart';
import 'package:a2v1/screens/forecastscreen.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
        child: Center(
            child: Text(
      "Menu",
      style: TextStyle(fontSize: 30),
    ))));

    final Set<String> menuTitles = {"Home", "Forecast", "Map", "About"};
    menuTitles.forEach((element) {
      menuItems.add(ListTile(
        title: Text(
          element,
          style: const TextStyle(fontSize: 20),
        ),
        onTap: () {
          Widget screen = Container();
          switch (element) {
            case "Home":
              screen = HomeScreen();
              break;
            case "Forecast":
              screen = ForecastScreen();
              break;
            default:
          }

          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
