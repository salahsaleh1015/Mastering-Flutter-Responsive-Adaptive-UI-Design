



import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Flexible(
              child: Container(
                height: 505,
                color: Colors.lightBlue,
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
            )
          ],
        ),
      ),
    );
  }
}