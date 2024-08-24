import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double sliderValue = 1.6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 22, 40),
      appBar: AppBar(
        title: const Text(
          'BMI Calculator ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 22, 40),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(1, 45, 65, 1),
                      borderRadius: BorderRadius.circular(8.0)),
                  height: 150.0,
                  width: 150.0,
                  child: Column(
                    children: [
                      const Text(
                        'MALE',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.male,
                          size: 80,
                        ),
                        label: const Text(''),
                        style: TextButton.styleFrom(
                            iconColor: Colors.white, padding: EdgeInsets.zero),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(1, 45, 65, 1),
                      borderRadius: BorderRadius.circular(8.0)),
                  height: 150.0,
                  width: 150.0,
                  child: Column(
                    children: [
                      const Text(
                        'FEMALE',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.female,
                          size: 80,
                        ),
                        label: const Text(''),
                        style: TextButton.styleFrom(
                            iconColor: Colors.white, padding: EdgeInsets.zero),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 80, 0, 0),
                child: Container(
                  height: 160,
                  width: 400,
                  decoration:
                  const BoxDecoration(color: Color.fromRGBO(1, 45, 65, 1)),
                  child: Column(
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Slider(
                        value: sliderValue,
                        onChanged: (x) {
                          setState(() {
                            sliderValue = x;
                          });
                        },
                        divisions: 160,
                        min: 1,
                        max: 2.5,
                        activeColor : Colors.white,
                        inactiveColor : Colors.white38,
                      ),
                      Text(
                        'The Height : ${sliderValue.toStringAsFixed(2)} M',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(1, 45, 65, 1),
                      borderRadius: BorderRadius.circular(8.0)),
                  height: 170.0,
                  width: 150.0,
                  child: Column(
                    children: [
                      const Text(
                        'WEIGHT',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '60',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Add logic to decrease weight
                            },
                            icon: const Icon(Icons.remove),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              // Add logic to increase weight
                            },
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(1, 45, 65, 1),
                      borderRadius: BorderRadius.circular(8.0)),
                  height: 170.0,
                  width: 150.0,
                  child: Column(
                    children: [
                      const Text(
                        'AGE',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '28',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Add logic to decrease weight
                            },
                            icon: const Icon(Icons.remove),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              // Add logic to increase weight
                            },
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 90,),
          ElevatedButton(
            onPressed: () {},
            child:  const Text(' CALCULATE YOUR BMI '),
          )
        ],
      ),
    );
  }
}
