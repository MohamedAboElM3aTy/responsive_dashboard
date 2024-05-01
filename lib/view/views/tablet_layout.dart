import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/views/mobile_layout.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: MobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
