import 'package:flutter/material.dart';

class CheckMessageCircle extends StatelessWidget {
  const CheckMessageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 4,height: 4,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(4)),);
  }
}
