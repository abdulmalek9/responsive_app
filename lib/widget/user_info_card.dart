import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/models/user_info_models.dart';
import 'package:responsive_app/utils/app_styles.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key, required this.userInfoModels});

  final UserInfoModels userInfoModels;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading:
              SvgPicture.asset(userInfoModels.image), //Assets.imagesAvatar3
          title: Text(
            userInfoModels.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModels.supTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
