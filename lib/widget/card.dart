import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF272A4E),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(20),
      child: child,
    );
  }
}
