import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_card_model.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widget/all_expenses_card.dart';

class AllExpensesCardBuilder extends StatelessWidget {
  const AllExpensesCardBuilder({
    super.key,
  });
  static const List<AllExpensesCardModel> itemModel = [
    AllExpensesCardModel(
        image: Assets.imagesBalance,
        cardName: "Balance",
        date: "April 2022",
        money: r"$20.129"),
    AllExpensesCardModel(
        image: Assets.imagesIncome,
        cardName: "Income",
        date: "April 2022",
        money: r"$20.129"),
    AllExpensesCardModel(
        image: Assets.imagesExpenses,
        cardName: "Expenses",
        date: "April 2022",
        money: r"$20.129"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: itemModel.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpensesCard(
              isActive: true,
              itemModel: item,
            ),
          ),
        );
      }).toList(),
    );
  }
}
