import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/utils/app_styles.dart';

class AllExpensesInActiveCardBody extends StatelessWidget {
  const AllExpensesInActiveCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Assets.imagesIncome),
              const Icon(Icons.keyboard_arrow_right_outlined),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            "Income",
            style: AppStyles.styleSemiBold16(context),
          ),
          Text(
            "April 2022",
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "\$20.129",
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}
