import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/view/widgets/my_card/dots_indicator.dart';
import 'package:responsive_dashboard/view/widgets/my_card/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      _currentIndex = _pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 420,
          child: Text(
            'My Card',
            style: AppStyles.styleSemiBold20,
          ),
        ),
        const SizedBox(height: 20),
        MyCardsPageView(controller: _pageController),
        const SizedBox(height: 20),
        DotsIndicator(currentIndex: _currentIndex),
      ],
    );
  }
}
