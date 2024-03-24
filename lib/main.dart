import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather Forecaster",
            style: TextStyle(color: Colors.purpleAccent),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/night.png"),
                  fit: BoxFit.fill)),
          child: const Center(
              child: Text(
            "Welcome to Weather Forecaster",
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
