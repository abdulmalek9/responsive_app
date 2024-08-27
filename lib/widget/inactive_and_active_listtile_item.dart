import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/models/list_tile_item_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class InActiveListTileWidget extends StatelessWidget {
  const InActiveListTileWidget({
    super.key,
    required this.listTileItemModel,
  });

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

class ActiveListTileWidget extends StatelessWidget {
  const ActiveListTileWidget({
    super.key,
    required this.listTileItemModel,
  });

  final ListTileItemModel listTileItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(listTileItemModel.iconImage),
      trailing: Container(
        width: 4,
        color: const Color(0xFF4EB7F2),
      ),
      title: Text(
        listTileItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
    );
  }
}
