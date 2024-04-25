import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/view/views/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox.shrink(),
        tabletLayout: (context) => const SizedBox.shrink(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
