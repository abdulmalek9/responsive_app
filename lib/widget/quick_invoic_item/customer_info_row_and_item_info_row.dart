import 'package:flutter/material.dart';
import 'package:responsive_app/widget/quick_invoic_item/custom_info_field.dart';

class CustomerInfoRow extends StatelessWidget {
  const CustomerInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomInfoField(
            lable: "Customer name",
            textHint: "Type customer name",
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomInfoField(
            lable: "Customer Email",
            textHint: "Type customer email",
          ),
        ),
      ],
    );
  }
}

class ItemInfoRow extends StatelessWidget {
  const ItemInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomInfoField(
            lable: "Item name",
            textHint: "Type customer name",
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomInfoField(
            lable: "Item mount",
            textHint: "USD",
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 184),
              child: Icon(Icons.keyboard_arrow_down_outlined),
            ),
          ),
        ),
      ],
    );
  }
}
