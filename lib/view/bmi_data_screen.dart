// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bmi_test1/constants/constant.dart';
import 'package:bmi_test1/view/bmi_data_result.dart';
import 'package:bmi_test1/widget/card.dart';
import 'package:bmi_test1/widget/text_icon.dart';
import 'package:flutter/material.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({super.key});

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  int height = 100;
  int weight = 50;
  int age = 20;

  double calculateBmi() {
    double bmi = 0;
    double heightMeter = height / 100;
    bmi = weight / (heightMeter * heightMeter);
    return bmi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Cards(
                      child: Icontext(
                title: 'Male',
                icon: Icons.male,
              ))),
              Expanded(
                  child: Cards(
                      child: Icontext(
                title: 'Female',
                icon: Icons.female,
              ))),
            ],
          )),
          Expanded(
            child: Container(
              child: Cards(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "$height",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 80,
                        max: 200,
                        activeColor: Colors.white,
                        thumbColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  child: Row(
            children: [
              Expanded(
                child: Cards(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'weight',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$weight",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight = weight - 1;
                              });
                            },
                            child: Icon(Icons.remove),
                            mini: true,
                            backgroundColor: Color(0xffEC3C66)),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              weight = weight + 1;
                            });
                          },
                          child: Icon(Icons.add),
                          mini: true,
                          backgroundColor: Color(0xffEC3C66),
                        ),
                      ],
                    )
                  ],
                )),
              ),
              Expanded(
                child: Cards(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'age',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$age',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              age = age - 1;
                            });
                          },
                          child: Icon(Icons.remove),
                          mini: true,
                          backgroundColor: Color(0xffEC3C66),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              age = age + 1;
                            });
                          },
                          child: Icon(Icons.add),
                          mini: true,
                          backgroundColor: Color(0xffEC3C66),
                        ),
                      ],
                    )
                  ],
                )),
              ),
            ],
          ))),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BmiDataResult(
                        bmi: calculateBmi(),
                      )));
            }),
            child: Container(
                child: Center(
                  child: const Text(
                    'BMI Data',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                height: 80,
                color: Color(0xffEC3C66)),
          ),
        ],
      ),
    );
  }
}
