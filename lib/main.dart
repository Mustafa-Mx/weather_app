import 'package:a2v1/screens/aboutus.dart';
import 'package:a2v1/screens/forecastscreen.dart';
import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomeScreen(),
        "/forecast": (context) => ForecastScreen(),
        "/about": (context) => AboutUSScreen()
      },
      initialRoute: "/",
    );
  }
}
