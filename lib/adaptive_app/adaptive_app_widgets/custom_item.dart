


import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffb4b4b4),
      ),
    );
  }
}