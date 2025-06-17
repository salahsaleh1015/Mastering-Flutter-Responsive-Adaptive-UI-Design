



import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/custom_sliver_horizontal_list.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/custom_sliver_list.dart';

class TabletLayoutWidget extends StatelessWidget {
  const TabletLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 25)),
          CustomSliverHorizontalList(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          CustomSliverList(),
        ],
      ),
    );
  }
}
