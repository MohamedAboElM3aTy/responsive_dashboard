import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/view/views/desktop_layout.dart';
import 'package:responsive_dashboard/view/views/mobile_layout.dart';
import 'package:responsive_dashboard/view/views/tablet_layout.dart';
import 'package:responsive_dashboard/view/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: _scaffoldKey,
      appBar: width < SizeConfig.mobileBreakPoint
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xfffafafa),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: width < SizeConfig.mobileBreakPoint ? const CustomDrawer() : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
