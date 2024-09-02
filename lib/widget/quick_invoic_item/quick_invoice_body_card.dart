import 'package:flutter/material.dart';
import 'package:responsive_app/models/user_info_models.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widget/user_info_card.dart';

class QuickInvoiceBodyCard extends StatelessWidget {
  const QuickInvoiceBodyCard({super.key});
  static List<UserInfoModels> userInfoModels = [
    UserInfoModels(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        supTitle: "Madraniadi20@gmail"),
    UserInfoModels(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        supTitle: "Josh Nunito@gmail.com"),
    UserInfoModels(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        supTitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: userInfoModels
                .map(
                  (e) => IntrinsicWidth(child: UserInfoCard(userInfoModels: e)),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
