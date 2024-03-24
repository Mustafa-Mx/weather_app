import 'package:flutter/material.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Forecast Screen"), backgroundColor: Colors.blueGrey),
      body: Center(child: Text("Forecast Screen")),
    );
  }
}
