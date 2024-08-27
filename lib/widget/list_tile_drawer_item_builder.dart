import 'package:flutter/material.dart';
import 'package:responsive_app/models/list_tile_item_model.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widget/custom_list_tile_drawer.dart';

class ListTileDrawerItemBuilder extends StatefulWidget {
  const ListTileDrawerItemBuilder({super.key});

  @override
  State<ListTileDrawerItemBuilder> createState() =>
      _ListTileDrawerItemBuilderState();
}

class _ListTileDrawerItemBuilderState extends State<ListTileDrawerItemBuilder> {
  List<ListTileItemModel> listTileItem = [
    ListTileItemModel(iconImage: Assets.imagesDashboard, title: 'Dashboard'),
    ListTileItemModel(
        iconImage: Assets.imagesMyTransctions, title: 'My Transaction'),
    ListTileItemModel(iconImage: Assets.imagesStatistics, title: 'Statistics'),
    ListTileItemModel(
        iconImage: Assets.imagesWalletAccount, title: 'Wallet Account'),
    ListTileItemModel(
        iconImage: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: listTileItem.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomListTileDrawer(
                listTileItemModel: listTileItem[index],
              ),
            ),
          );
        });
  }
}
