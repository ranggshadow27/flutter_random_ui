import 'package:bwa_firstday_ui/themes/themes.dart';
import 'package:flutter/material.dart';

class CheckoutCard extends StatefulWidget {
  String image;
  String product;
  String place;
  double price;

  CheckoutCard(
      {required this.image,
      required this.place,
      required this.price,
      required this.product});

  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  int amount = 1;
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
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      widget.image,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product,
                    style: poppinsMedium.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    widget.place,
                    style: poppinsRegualr.copyWith(
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFA3A8B8),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (amount <= 1) {
                              amount = 1;
                            } else {
                              amount -= 1;
                            }
                          });
                        },
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: greybtnColor,
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                      Text(
                        amount.toString(),
                        style: poppinsMedium.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (amount < 999) {
                              amount += 1;
                            } else {
                              amount == 999;
                            }
                            ;
                          });
                        },
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: blackbtnColor,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                '\$ ${widget.price}',
                style: poppinsSemibold.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
