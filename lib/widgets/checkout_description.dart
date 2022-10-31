import 'package:bwa_firstday_ui/themes/themes.dart';
import 'package:flutter/material.dart';

class CheckoutDesc extends StatelessWidget {
  double subtotal;
  double total;
  double delivery;

  CheckoutDesc({
    required this.delivery,
    required this.subtotal,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Information',
                  style: poppinsMedium.copyWith(fontSize: 18),
                ),
                Text(
                  'Sub total',
                  style: poppinsRegualr,
                ),
                Text(
                  'Delivery',
                  style: poppinsRegualr,
                ),
                Text(
                  'Total',
                  style: poppinsRegualr,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  '\$ $subtotal',
                  style: poppinsMedium.copyWith(fontSize: 16),
                ),
                Text(
                  '\$ $delivery',
                  style: poppinsMedium.copyWith(fontSize: 16),
                ),
                Text(
                  '\$ $total',
                  style: poppinsSemibold.copyWith(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
