import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/models/all_expenses_card_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class AllExpensesInActiveCardBody extends StatelessWidget {
  const AllExpensesInActiveCardBody({
    super.key,
    required this.itemModel,
  });
  final AllExpensesCardModel itemModel;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0XFFFAFAFA),
                  child: Center(child: SvgPicture.asset(itemModel.image))),
              const Spacer(),
              const Icon(Icons.keyboard_arrow_right_outlined),
            ],
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
