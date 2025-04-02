


import 'package:flutter/material.dart';

class IntrinsicHeightsExample extends StatelessWidget {
  const IntrinsicHeightsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(

                        width: 100,
                        color: Colors.yellow,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: 100,

                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Expanded(
                            child: Container(
                              height: 100,

                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
