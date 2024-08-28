import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_card_model.dart';
import 'package:responsive_app/widget/all_expenses_inactive_and_active_card_body.dart';

class AllExpensesCard extends StatelessWidget {
  const AllExpensesCard(
      {super.key, required this.isActive, required this.itemModel});
  final AllExpensesCardModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AllExpensesInActiveCardBody(
      itemModel: itemModel,
    );
  }
}
