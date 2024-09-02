import 'package:flutter/material.dart';
import 'package:responsive_app/models/list_tile_item_model.dart';
import 'package:responsive_app/widget/inactive_and_active_listtile_item.dart';

class CustomListTileDrawer extends StatelessWidget {
  const CustomListTileDrawer(
      {super.key, required this.listTileItemModel, required this.isActive});
  final ListTileItemModel listTileItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? ActiveListTileWidget(listTileItemModel: listTileItemModel)
        : InActiveListTileWidget(listTileItemModel: listTileItemModel);
  }
}
