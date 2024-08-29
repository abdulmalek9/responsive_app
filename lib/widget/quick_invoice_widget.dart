import 'package:flutter/material.dart';
import 'package:responsive_app/widget/buttons_row.dart';
import 'package:responsive_app/widget/custom_container.dart';
import 'package:responsive_app/widget/customer_info_row_and_item_info_row.dart';
import 'package:responsive_app/widget/quick_invoice_body_card.dart';
import 'package:responsive_app/widget/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: CustomContainer(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceBodyCard(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: Divider(
              thickness: 1,
              color: Color(0xffF1F1F1),
            ),
          ),
          CustomerInfoRow(),
          SizedBox(
            height: 24,
          ),
          ItemInfoRow(),
          SizedBox(
            height: 24,
          ),
          ButtonsRow()
        ],
      )),
    );
  }
}
