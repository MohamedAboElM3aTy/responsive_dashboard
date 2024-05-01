import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/my_card/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
