import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const LayOutBuilderExample());
}

class LayOutBuilderExample extends StatelessWidget {
  const LayOutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context , constraints) {
            if(constraints.maxWidth < 600) {   // 600 is my break point
              return MobileLayOut();
            }else{
              return DeskTopLayOut();
            }

          }
        ),
      ),
    );
  }
}

class MobileLayOut extends StatelessWidget {
  const MobileLayOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 10),
          color: Colors.lightBlue,
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(number: index + 1),
                ),
              );
            },
            title: Text("Item ${index + 1}"),
          ),
        );
      },
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.number});

  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(number.toString(), style: TextStyle(fontSize: 50)),
      ),
    );
  }
}


class DeskTopLayOut extends StatefulWidget {
  const DeskTopLayOut({super.key});

  @override
  State<DeskTopLayOut> createState() => _DeskTopLayOutState();
}

class _DeskTopLayOutState extends State<DeskTopLayOut> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(child:ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.lightBlue,
                child: ListTile(
               onTap: (){
                 number = index + 1;
                 setState(() {});
               },
                  title: Text("Item ${index + 1}"),
                ),
              );
            },
          ) ),
          Expanded(child: Center(child: Text(number.toString(), style: TextStyle(fontSize: 50))))
        ],
      ),
    );
  }
}
