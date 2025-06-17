


import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/custom_item2.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return CustomItem2();
        });
  }
}

