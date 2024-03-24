import 'package:a2v1/commons/menudrawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather Forecaster",
          style: TextStyle(color: Colors.purpleAccent),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: const MenuDrawer(),
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
                  "Welcome to Weather Forecaster",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
          )),
    );
  }
}
