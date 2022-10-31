import 'package:bwa_firstday_ui/widgets/checkout_card.dart';
import 'package:bwa_firstday_ui/widgets/checkout_description.dart';
import 'package:flutter/material.dart';
import 'package:bwa_firstday_ui/themes/themes.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorDay7,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "My Shopping Cart",
                  style: poppinsSemibold.copyWith(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                CheckoutCard(
                  image: 'assets/burger.png',
                  place: 'McTheone',
                  price: 49.99,
                  product: 'Burger Malleta',
                ),
                SizedBox(height: 26),
                CheckoutCard(
                  image: 'assets/mojito.png',
                  place: 'The Bar',
                  price: 29.99,
                  product: 'Mojito Orange',
                ),
                SizedBox(height: 26),
                CheckoutDesc(delivery: 99.99, subtotal: 679.99, total: 779.99),
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Checkout Now",
                      style: poppinsSemibold.copyWith(
                        color: textbrownColorDay7,
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: yellowbtnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save to Wishlist",
                      style: poppinsRegualr.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: greybtnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
