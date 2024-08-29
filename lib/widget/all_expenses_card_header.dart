import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/models/all_expenses_card_model.dart';

class AllExpensesCardHeader extends StatelessWidget {
  const AllExpensesCardHeader({
    super.key,
    required this.itemModel,
    required this.isActive,
  });

  final AllExpensesCardModel itemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: isActive
              ? const Color(0XFFFFFFFF).withOpacity(0.10000000149011612)
              : const Color(0xFFFAFAFA),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(
              itemModel.image,
              colorFilter: ColorFilter.mode(
                isActive ? Colors.white : const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.keyboard_arrow_right_outlined,
          color: isActive ? Colors.white : const Color(0xff064061),
        ),
      ],
    );
  }
}
