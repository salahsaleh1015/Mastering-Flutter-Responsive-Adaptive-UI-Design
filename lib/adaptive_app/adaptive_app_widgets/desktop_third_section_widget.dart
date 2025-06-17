
import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/custom_item.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/custom_item2.dart';

class DesktopThirdSectionWidget extends StatelessWidget {
  const DesktopThirdSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8,top: 8),
      child: const Column(
        children: [
          Expanded(
              flex: 2,
              child: CustomItem()),
          Expanded(
              flex: 1,
              child: CustomItem2()),
        ],
      ),
    );
  }
}

