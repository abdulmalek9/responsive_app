import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widget/dotes_indcator.dart';
import 'package:responsive_app/widget/my_card_pages_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyles.styleSemiBold16(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPagesView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotesIndcator(
          currentIndex: currentPageIndex,
        ),
      ],
    );
  }
}
