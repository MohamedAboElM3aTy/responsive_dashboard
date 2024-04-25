import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/invoice_form.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/latest_transaction.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransactionWidget(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          InvoiceForm(),
        ],
      ),
    );
  }
}
