


import 'dart:developer';

import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    log(height.toString());
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: height*.2,
              width: 200,
              color: Colors.blue,
            ),
            Container(
              height: height*.2,
              width: 200,
              color: Colors.black,
            ),
            Container(
              height: height*.2,
              width: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}