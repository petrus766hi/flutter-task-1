import 'package:bmi_test1/constants/constant.dart';
import 'package:bmi_test1/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiDataResult extends StatelessWidget {
  const BmiDataResult({super.key, required this.bmi});

  final double bmi;

  String valueCategory(bmiValue) {
    String category = '';
    if (bmiValue < 18.5) {
      category = 'Underweight';
    } else if (bmiValue >= 18.5 && bmi <= 24.9) {
      category = 'Normal';
    } else if (bmiValue >= 25 && bmi <= 29.9) {
      category = 'Overweight';
    } else if (bmiValue >= 30) {
      category = 'Obese';
    }
    return category;
  }

  determineBmiCategory(double bmiValue) {
    String category = '';
    if (bmiValue < 16.0) {
      category = underweightServere;
    } else if (bmiValue >= 16.0 && bmiValue < 17.0) {
      category = underweightModerate;
    } else if (bmiValue >= 17.0 && bmiValue < 18.5) {
      category = underweightMild;
    } else if (bmiValue >= 18.5 && bmiValue < 25.0) {
      category = normal;
    } else if (bmiValue >= 25.0 && bmiValue < 30.0) {
      category = overweight;
    } else if (bmiValue >= 30.0 && bmiValue < 35.0) {
      category = obeseClassI;
    } else if (bmiValue >= 35.0 && bmiValue < 40.0) {
      category = obeseClassII;
    } else if (bmiValue >= 40.0) {
      category = obeseClassIII;
    }
    return category;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text('Hasil Calculating BMI'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                  child: Cards(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      valueCategory(bmi),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      '${bmi.toStringAsFixed(1)}',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Normal BMI Range:',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '18.5 - 25 kg/m2',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      determineBmiCategory(bmi),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ))),
          GestureDetector(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Container(
                child: Center(
                  child: const Text(
                    'BMI ReCalculate',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                height: 80,
                color: Color(0xffEC3C66)),
          )
        ],
      ),
    );
  }
}
