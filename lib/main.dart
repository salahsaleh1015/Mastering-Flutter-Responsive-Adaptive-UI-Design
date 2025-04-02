import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
runApp(const FittedBoxExampleOne());
}




class FittedBoxExampleOne extends StatelessWidget {
  const FittedBoxExampleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Flexible(
              child: FittedBox(
                child: Icon(
                 Icons.ac_unit,
                  size: 300,
                ),
              ),
            ),
            Container(
          height: 150,
              color: Colors.lightBlue,
            ),
            Container(
              height: 150,
              color: Colors.green,
            ),
            Container(
              height: 150,
              color: Colors.yellow,
            ),
            SizedBox(
              height: 200,
              child: FittedBox(child: Icon(Icons.abc)),
            )
          ],
        ),
      ),
    );
  }
}
