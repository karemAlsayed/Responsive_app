import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/dots_indecator.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(pageController: pageController),
        const SizedBox(
          height: 20,
        ),
         DotsIndecator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
