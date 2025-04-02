


import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: AspectRatio(
          aspectRatio: 3/1,
          child: Container(
            color: Colors.red,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}