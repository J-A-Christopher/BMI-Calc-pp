import 'package:flutter/material.dart';
import './display.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isSelected = true;
  bool isChosen = true;
  double _value = 0;
  int weight = 0;
  int age = 0;
  var answer;

  void bmiResult(
    num1,
    num2,
  ) {
    var height = (num1 / 100) * (num1 / 100);
    var w1 = num2;
    if (_value != null && weight != null && age != null) {
      answer = (w1 / height);
      print(answer);
    } else {
      const Text('Key In Some Valid Data');
    }
  }

  void ageIncrementer() {
    setState(() {
      age++;
    });
  }

  void ageDecrementer() {
    setState(() {
      age--;
    });
  }

  void weightIncrementer() {
    setState(() {
      weight++;
    });
  }

  void weightDecrementer() {
    setState(() {
      weight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
              .copyWith(secondary: Colors.pink),
          fontFamily: 'Lato'),
      home: Scaffold(
          backgroundColor: const Color(0xff050A30),
          appBar: AppBar(
            elevation: 0,
            title: const Center(
                child: Text(
              'BMI CALCULATOR',
            )),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                      height: 150,
                      width: 150,
                      child: Card(
                          color: const Color(0xff1D2951),
                          child: Column(
                            children: [
                              Icon(
                                Icons.male,
                                color: isSelected ? Colors.white : Colors.grey,
                                size: 100,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    color:
                                        isSelected ? Colors.white : Colors.grey,
                                    fontSize: 25),
                              )
                            ],
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChosen = !isChosen;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                      height: 150,
                      width: 150,
                      child: Card(
                          color: const Color(0xff1D2951),
                          child: Column(
                            children: [
                              Icon(
                                Icons.female,
                                color: isChosen ? Colors.white : Colors.grey,
                                size: 100,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    color:
                                        isChosen ? Colors.white : Colors.grey,
                                    fontSize: 25),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                    color: const Color(0xff1D2951),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'HEIGHT',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${_value.toStringAsFixed(2)} cm',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 35),
                        ),
                        Slider(
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          min: 0.0,
                          max: 260,
                          activeColor: Colors.purple,
                          inactiveColor: Colors.purple.shade100,
                          thumbColor: Colors.pink,
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    height: 150,
                    width: 150,
                    child: Card(
                        color: const Color(0xff1D2951),
                        child: Column(
                          children: [
                            const Text(
                              'WEIGHT',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 45),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: const Color(0xff00004d),
                                    child: IconButton(
                                        onPressed: () {
                                          weightDecrementer();
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: const Color(0xff00004d),
                                    child: IconButton(
                                        onPressed: () {
                                          weightIncrementer();
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    height: 150,
                    width: 150,
                    child: Card(
                        color: const Color(0xff1D2951),
                        child: Column(
                          children: [
                            const Text(
                              'AGE',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            Text(
                              age.toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 45),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: const Color(0xff00004d),
                                    child: IconButton(
                                        onPressed: () {
                                          ageDecrementer();
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: const Color(0xff00004d),
                                    child: IconButton(
                                        onPressed: () {
                                          ageIncrementer();
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    bmiResult(
                      _value,
                      weight,
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Display(answer)));
                  },
                  child: const Text('CALCULATE YOUR BMI'),
                ),
              )
            ],
          )),
    );
  }
}
