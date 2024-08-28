import 'package:flutter/material.dart';
import 'package:responsive_app/models/list_tile_item_model.dart';
import 'package:responsive_app/models/user_info_models.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widget/inactive_and_active_listtile_item.dart';
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
                const SizedBox(
                  height: 20,
                ),
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
          const ListTileDrawerItemBuilder(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                InActiveListTileWidget(
                    listTileItemModel: ListTileItemModel(
                        title: "Setting System",
                        iconImage: Assets.imagesSettings)),
                InActiveListTileWidget(
                    listTileItemModel: ListTileItemModel(
                        title: "Logout account",
                        iconImage: Assets.imagesLogout)),
                const SizedBox(
                  height: 45,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
