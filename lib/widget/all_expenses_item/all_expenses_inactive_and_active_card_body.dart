import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_card_model.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widget/all_expenses_item/all_expenses_card_header.dart';

class AllExpensesInActiveCardBody extends StatelessWidget {
  const AllExpensesInActiveCardBody({
    super.key,
    required this.itemModel,
    required this.isActive,
  });
  final AllExpensesCardModel itemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0XFFF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCardHeader(
            itemModel: itemModel,
            isActive: isActive,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.cardName,
            style: AppStyles.styleSemiBold16(context),
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.money,
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}

class AllExpensesActiveCardBody extends StatelessWidget {
  const AllExpensesActiveCardBody({
    super.key,
    required this.itemModel,
    required this.isActive,
  });
  final AllExpensesCardModel itemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF4EB7F2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0XFFF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCardHeader(itemModel: itemModel, isActive: isActive),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.cardName,
            style: AppStyles.styleSemiBold16(context)
                .copyWith(color: Colors.white),
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFFFAFAFA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.money,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
