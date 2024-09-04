import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_card_model.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widget/all_expenses_item/all_expenses_card.dart';

class AllExpensesCardBuilder extends StatefulWidget {
  const AllExpensesCardBuilder({
    super.key,
  });

  @override
  State<AllExpensesCardBuilder> createState() => _AllExpensesCardBuilderState();
}

class _AllExpensesCardBuilderState extends State<AllExpensesCardBuilder> {
  List<AllExpensesCardModel> itemModel = const [
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
  int currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (0 != currentItem) {
                setState(() {
                  currentItem = 0;
                });
              }
            },
            child: AllExpensesCard(
              isActive: currentItem == 0,
              itemModel: itemModel[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (1 != currentItem) {
                setState(() {
                  currentItem = 1;
                });
              }
            },
            child: AllExpensesCard(
              isActive: currentItem == 1,
              itemModel: itemModel[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (2 != currentItem) {
                setState(() {
                  currentItem = 2;
                });
              }
            },
            child: AllExpensesCard(
              isActive: currentItem == 2,
              itemModel: itemModel[2],
            ),
          ),
        ),
      ],
    );
  }
}
