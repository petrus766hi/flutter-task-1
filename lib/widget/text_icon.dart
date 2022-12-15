import 'package:flutter/material.dart';

import '../constants/constant.dart';

class Icontext extends StatelessWidget {
  const Icontext({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        Text(
          title,
          style: TextGender,
        ),
      ],
    );
  }
}
