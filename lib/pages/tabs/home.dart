import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double temperature = 0;
  double humidity = 0;
  double rain_rate = 0;
  double rain_rate1 = 1;
  double rain_rate2 = 2;
  double rain_rate3 = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Welcome to your home",
              style: TextStyle(color: Color.fromRGBO(255, 213, 74, 1)),
            ),
            backgroundColor: const Color.fromRGBO(100, 0, 200, 0.8),
          ),
          body: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: const Text(
                    "Weather",
                    style: TextStyle(
                        fontSize: 40, color: Color.fromRGBO(100, 0, 200, 0.8)),
                  )),
              const SizedBox(
                height: 5,
              ),

              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Image.asset(
                      "images/a.jpeg",
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.all(value),
                    width: 210,
                    alignment: Alignment.centerRight,
                    child: Text(
                      textDirection: TextDirection.ltr,
                      "5/12℃",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(100, 0, 200, 0.8),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: const Text(
                  "Room Data",
                  style: TextStyle(
                      fontSize: 40, color: Color.fromRGBO(100, 0, 200, 0.8)),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 0,
                  ),
                  SizedBox(
                    height: 55,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(10),
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            print("bedroom");
                            setState(() {
                              rain_rate = rain_rate1;
                            });
                          },
                          child: const Text(
                            "Bedroom",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const SizedBox(width: 7),
                        ElevatedButton(
                            onPressed: () {
                              print("Living Room");
                              setState(() {
                                rain_rate = rain_rate2;
                              });
                            },
                            child: const Text(
                              "Living Room",
                              style: TextStyle(fontSize: 20),
                            )),
                        const SizedBox(width: 7),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                rain_rate = rain_rate3;
                              });
                              print("Kitchen");
                            },
                            child: const Text(
                              "Kitchen",
                              style: TextStyle(fontSize: 20),
                            )),
                        const SizedBox(width: 7),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                rain_rate = rain_rate3;
                              });
                              print("Dining Room");
                            },
                            child: const Text(
                              "Dining Room",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(100, 0, 200, 0.8),
                        ),
                        child: Text(
                          "Temperature:$temperature",
                          style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(255, 213, 74, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(100, 0, 200, 0.8),
                        ),
                        child: Text(
                          "Humidity:$humidity",
                          style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(255, 213, 74, 1),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(100, 0, 200, 0.8),
                        ),
                        child: Text(
                          "Rain Rate:$rain_rate",
                          style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(255, 213, 74, 1),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
