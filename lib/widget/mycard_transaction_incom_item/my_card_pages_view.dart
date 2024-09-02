import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/my_card_widget.dart';

class MyCardPagesView extends StatelessWidget {
  const MyCardPagesView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        children: List.generate(3, (index) => const MyCardWidget()));
  }
}
