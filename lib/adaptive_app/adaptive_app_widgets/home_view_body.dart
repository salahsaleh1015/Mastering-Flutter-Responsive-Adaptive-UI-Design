import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/desktop_layout_widget.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/mobile_layout_widget.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/tablet_layout_widget.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/project_widgets/adaptive_layout.dart';

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
