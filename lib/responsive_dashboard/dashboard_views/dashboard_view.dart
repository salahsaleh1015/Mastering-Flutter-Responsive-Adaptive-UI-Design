


import 'package:flutter/material.dart';

import '../../adaptive_app/widgets/adaptive_layout.dart';
import '../dashboard_widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdaptiveLayout(
      desktopLayout: (BuildContext context)=> DashboardDesktopLayout(),
      tabletLayout: (BuildContext context)=> SizedBox(),
      mobileLayout: (BuildContext context) =>SizedBox(),);
  }
}
