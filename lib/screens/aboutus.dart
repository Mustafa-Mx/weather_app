import 'package:a2v1/commons/bottomnavbar.dart';
import 'package:flutter/material.dart';

class AboutUSScreen extends StatefulWidget {
  const AboutUSScreen({super.key});

  @override
  State<AboutUSScreen> createState() => _AboutUSScreenState();
}

class _AboutUSScreenState extends State<AboutUSScreen> {
  String message = "";
  late int counter;
  TextEditingController tec = TextEditingController();

  @override
  void initState() {
    counter = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "About us",
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
                    decoration: BoxDecoration(color: Colors.black45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text("Hi There Welcome to About Section")),
                        TextField(
                          controller: tec,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              hintText: "Please Enter your name!",
                              hintStyle: TextStyle(color: Colors.white70)),
                        ),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: ElevatedButton(
                                onPressed: onButtonPress,
                                child: const Text("Click me!"))),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Text(message)),
                        )
                      ],
                    )))));
  }

  void onButtonPress() {
    counter = counter + 1;
    setState(() {
      message = "Hello ${tec.text} for the $counter times";
    });
  }
}
