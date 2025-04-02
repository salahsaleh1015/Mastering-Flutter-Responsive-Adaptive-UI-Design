


import 'package:flutter/material.dart';

class FittedBoxExampleOne extends StatelessWidget {
  const FittedBoxExampleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Flexible(child: FittedBox(child: Icon(Icons.ac_unit, size: 300))),
            Container(height: 150, color: Colors.lightBlue),
            Container(height: 150, color: Colors.green),
            Container(height: 150, color: Colors.yellow),
            SizedBox(height: 200, child: FittedBox(child: Icon(Icons.abc))),
          ],
        ),
      ),
    );
  }
}

class FittedBoxExampleTwo extends StatelessWidget {
  const FittedBoxExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => FittedBox(
            child: Image.network(
                "https://media.istockphoto.com/id/904172104/photo/weve-made-it-all-this-way-i-am-proud.jpg?s=1024x1024&w=is&k=20&c=aA2czcJSdCtbvP2VTbnY_BVmox-c0KGdoXXIwB_P44o="),
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: .4,
            mainAxisSpacing: .4,
          ),
        ),
      ),
    );
  }
}