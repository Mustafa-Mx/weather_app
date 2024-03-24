import 'package:a2v1/commons/bottomnavbar.dart';
import 'package:a2v1/weather/http_helper.dart';
import 'package:a2v1/weather/weather.dart';
import 'package:flutter/material.dart';

class ForecastScreen extends StatefulWidget {
  const ForecastScreen({super.key});

  @override
  State<ForecastScreen> createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  String weatherInfo = "";
  Weather weather = Weather("", 0, 0, 0, 0, "");
  HTTPHelper httpHelper = HTTPHelper();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    httpHelper.GetWeather("31.573152", "74.3078585").then((weatherObj) {
      weather = weatherObj;
      weatherInfo = weather.description;
      setState(() {});
    });
  }

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
                  "Current Weather Condition is $weatherInfo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
          )),
    );
  }
}
