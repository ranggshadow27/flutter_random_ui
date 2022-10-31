import 'package:flutter/material.dart';
import 'package:bwa_firstday_ui/themes/themes.dart';

class FirstEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: 66,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/shoppingbag.png',
                width: 240,
                height: 210,
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Success Order',
                style: poppinsSemibold.copyWith(
                  color: Color(0xFF0E1954),
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'We will delivery your package\nas soon as possible',
                style: poppinsRegualr.copyWith(
                  color: Color(0xFF0E1954),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 55,
                width: 200,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/first_pricing');
                  },
                  child: Text(
                    'Done',
                    style: openSans.copyWith(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: pinkbtnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
