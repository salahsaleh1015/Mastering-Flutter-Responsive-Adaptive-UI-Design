import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/adaptive_layout.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/custom_sliver_grid_view.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/custom_sliver_horizontal_list.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/custom_sliver_list.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/desktop_layout_widget.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/mobile_layout_widget.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/widgets/tablet_layout_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktopLayout: (context) => const DesktopLayoutWidget(),
      tabletLayout: (context) => const TabletLayoutWidget(),
      mobileLayout: (context) => const MobileLayoutWidget(),
    );
  }
}
