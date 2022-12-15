import 'package:bmi_test1/constants/constant.dart';
import 'package:bmi_test1/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiDataResult extends StatelessWidget {
  const BmiDataResult({super.key, required this.bmi});

  final double bmi;

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
                      'Normal',
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
                      'You have a normal body weight. Good job!',
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
