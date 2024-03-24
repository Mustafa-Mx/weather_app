import 'package:a2v1/commons/bottomnavbar.dart';
import 'package:flutter/material.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forecast Screen",
          style: TextStyle(color: Colors.purpleAccent),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: WeatherBottomNavBar(),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/night.png"),
                  fit: BoxFit.fill)),
          child: Center(
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(44)),
                    color: Colors.black45),
                child: Text(
                  "This is Forecast Screen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
          )),
    );
  }
}
