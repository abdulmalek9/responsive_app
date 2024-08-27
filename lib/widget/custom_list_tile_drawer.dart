import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/models/list_tile_item_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class CustomListTileDrawer extends StatelessWidget {
  const CustomListTileDrawer({super.key, required this.listTileItemModel});
  final ListTileItemModel listTileItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(listTileItemModel.iconImage),
      title: Text(
        listTileItemModel.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
