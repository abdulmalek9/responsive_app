import 'package:flutter/material.dart';
import 'package:responsive_app/models/user_info_models.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widget/list_tile_drawer_item_builder.dart';
import 'package:responsive_app/widget/user_info_card.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                UserInfoCard(
                  userInfoModels: UserInfoModels(
                    image: Assets.imagesAvatar3,
                    title: "Lekan Okeowo",
                    supTitle: "demo@gmail.com",
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                )
              ],
            ),
          ),
          const ListTileDrawerItemBuilder()
        ],
      ),
    );
  }
}
