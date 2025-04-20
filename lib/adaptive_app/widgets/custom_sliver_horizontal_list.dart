


import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/custom_item.dart';

class CustomSliverHorizontalList extends StatelessWidget {
  const CustomSliverHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
      
            itemBuilder: (context, index){
      
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: AspectRatio(
                aspectRatio: 1,
                child: CustomItem()),
          );
        }),
      ),
    );
  }
}
