import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/custom_sliver_grid_view.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/custom_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 25)),
          CustomSliverGridView(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          CustomSliverList(),
        ],
      ),
    );
  }
}



